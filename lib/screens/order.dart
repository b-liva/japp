import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:japp/screens/proforma.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  TextEditingController numberController = new TextEditingController();
  String number = '';
  String getOrder = """
  query getOrder(\$number:Int){
  orderByNumber(number:\$number) {
    id
    number
    totalKw
    totalQty
    dateFa
    customer{
      id
      name
    }
    xprefSet {
      edges {
        node {
          id
          number
        }
      }
    }
    reqspecSet {
      edges {
        node {
          id
          qty
          kw
          rpmNew{
            rpm
          }
          voltage
        }
      }
    }
  }
}
  """;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Order'),
        ),
        body: Query(
          options: QueryOptions(
            document: gql(getOrder),
            variables: {'number': number},
          ),
          builder: (
            QueryResult result, {
            Refetch? refetch,
            FetchMore? fetchMore,
          }) {
            if (result.isLoading) {
              return Center(child: CircularProgressIndicator());
            }
            var orderRes = result.data;
            var specs = result.data?['orderByNumber']['reqspecSet']['edges'];
            var proformas = result.data?['orderByNumber']['xprefSet']['edges'];

            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  TextField(
                    controller: numberController,
                    keyboardType: TextInputType.number,
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        number = numberController.text;
                      });
                      refetch!();
                    },
                    child: Text('get'),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(children: [
                            Text(
                                'شماره درخواست: ${orderRes?['orderByNumber']['number'] ?? ''}'),
                            Text(orderRes?['orderByNumber']['customer']
                                    ['name'] ??
                                ''),
                            Text(orderRes?['orderByNumber']['dateFa'] ?? ''),
                            Text(
                                "کیلووات: ${orderRes?['orderByNumber']['totalKw'].toString() ?? ''}"),
                            Text(
                                "دستگاه: ${orderRes?['orderByNumber']['totalQty'].toString() ?? ''}"),
                          ]),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Column(children: [
                            Text('پیش فاکتور'),
                            ...List<Widget>.generate(proformas?.length ?? 0,
                                (int index) {
                              return TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, Proforma.routeName,
                                        arguments: ProformaArgs(
                                            proformas[index]['node']['id'],
                                            proformas[index]['node']['number']
                                        )
                                    );
                                  },
                                  child: Text(proformas[index]['node']['number']
                                      .toString()));
                            })
                          ]),
                        ),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columns: [
                        DataColumn(label: Text('ردیف')),
                        DataColumn(label: Text('تعداد')),
                        DataColumn(label: Text('کیلووات')),
                        DataColumn(label: Text('دور')),
                        DataColumn(label: Text('ولتاژ')),
                      ],
                      rows: List<DataRow>.generate(
                          specs?.length ?? 0,
                          (index) => DataRow(cells: [
                                DataCell(Text((index + 1).toString())),
                                DataCell(Text(
                                    specs[index]['node']['qty'].toString())),
                                DataCell(Text(
                                    specs[index]['node']['kw'].toString())),
                                DataCell(Text(specs[index]['node']['rpmNew']
                                        ['rpm']
                                    .toString())),
                                DataCell(Text(specs[index]['node']['voltage']
                                    .toString())),
                              ])),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
