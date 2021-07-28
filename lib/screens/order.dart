import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:japp/screens/proforma.dart';

class OrderArgs {
  final String id;
  final int? number;

  OrderArgs(this.id, {this.number});
}

class Order extends StatefulWidget {
  static const routeName = '/order';

  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  TextEditingController numberController = new TextEditingController();
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
    orderfollowupSet {
          edges {
            node {
              id
              summary
              description
              dateFa
            }
          }
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
    final args = ModalRoute.of(context)!.settings.arguments as OrderArgs;

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Order'),
        ),
        body: Query(
          options: QueryOptions(
            document: gql(getOrder),
            variables: {'number': args.number.toString()},
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
            var followups =
                result.data?['orderByNumber']['orderfollowupSet']['edges'];

            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Text(orderRes?['orderByNumber']['customer']['name'] ?? ''),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
//                              color: Colors.blue[400],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      orderRes?['orderByNumber']['number']
                                              .toString() ??
                                          '',
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_today_rounded,
                                      size: 12,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      orderRes?['orderByNumber']['dateFa'] ??
                                          '',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 15),
                                Row(
                                  children: [
                                    Text(
                                      "${orderRes?['orderByNumber']['totalKw'].toString() ?? ''} ",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    Text(
                                      " کیلووات",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                                Row(
                                  children: [
                                    Text(
                                        "${orderRes?['orderByNumber']['totalQty'].toString() ?? ''}"),
                                    Text(
                                      "دستگاه",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
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
                                            number: proformas[index]['node']
                                                ['number']));
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
                      columnSpacing: 30.0,
                      headingTextStyle: TextStyle(fontSize: 16, color: Colors.black87, fontFamily: "B-nazanin"),
                      dataTextStyle: TextStyle(fontSize: 12, color: Colors.black87, fontFamily: "B-nazanin"),
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
                  ...List<Widget>.generate(proformas?.length ?? 0, (int index) {
                    return Row(
                      children: [
                        Text(followups[index]['node']['summary']),
                        Text(followups[index]['node']['dateFa'])
                      ],
                    );
                  })
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
