import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart' as intl;
import 'package:japp/screens/payment.dart';

class ProformaArgs {
  final String id;
  final int? number;

  ProformaArgs(this.id, {this.number});
}

class Proforma extends StatelessWidget {
  static const routeName = '/proforma';
  var f = intl.NumberFormat("#,###");
  var fd = intl.NumberFormat("#.#");

  String getProforma = """
  query getProforma(\$id:ID!){
  proforma(id:\$id){
    number
    perm
    permNumber
    qty
    kw
    prices {
      priceNoVat
      priceVat
      priceWithVat
    }
    reqId{
      customer{
        name
      }
    }
    prefspecSet {
      edges {
        node {
          id
          qty
          kw
          rpm
          voltage
          price
        }
      }
    }
    paymentSet {
      edges {
        node {
          id
          amount
        }
      }
    }
  }
}
  """;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ProformaArgs;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(title: Text('پیش فاکتور')),
        body: Query(
          options: QueryOptions(
            document: gql(getProforma),
            variables: {'id': args.id},
          ),
          builder: (
            QueryResult result, {
            Refetch? refetch,
            FetchMore? fetchMore,
          }) {
            if (result.isLoading) {
              return Center(child: CircularProgressIndicator());
            }
            var proforma = result.data!['proforma'];
            var specs = result.data?['proforma']['prefspecSet']['edges'];
            var payments = result.data?['proforma']['paymentSet']['edges'];

            return SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
//                Text(args.number.toString()),
                  Text(proforma!['reqId']['customer']['name']),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                              padding: EdgeInsets.all(10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(proforma!['number'].toString()),
                                  Row(
                                    children: [
                                      Text("دستگاه: "),
                                      Text(proforma!['qty'].toString()),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text("کیلووات: "),
                                      Text(proforma!['kw'].toString()),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Text('شماره مجوز'),
                                      Text(proforma['perm']
                                          ? proforma['permNumber'].toString()
                                          : ''),
                                    ],
                                  ),
                                ],
                              ))),
                      Expanded(
                          child: Container(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Text('دریافتی'),
                            ...List<Widget>.generate(payments?.length ?? 0,
                                (int index) {
                              return TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, Payment.routeName,
                                        arguments: PaymentArgs(
                                            payments[index]['node']['id'],
                                            payments[index]['node']['amount']));
                                  },
                                  child: Text(
                                    f.format(payments[index]['node']['amount']),
                                    style: TextStyle(fontSize: 12),
                                  ));
                            })
                          ],
                        ),
                      ))
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: DataTable(
                      columnSpacing: 30.0,
                      headingTextStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.black87,
                          fontFamily: "B-nazanin"),
                      dataTextStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.black87,
                          fontFamily: "B-nazanin"),
                      columns: [
                        DataColumn(label: Text('ردیف')),
                        DataColumn(label: Text('تعداد')),
                        DataColumn(label: Text('کیلووات')),
                        DataColumn(label: Text('دور')),
                        DataColumn(label: Text('ولتاژ')),
                        DataColumn(label: Text('قیمت')),
                      ],
                      rows: List<DataRow>.generate(
                          specs?.length ?? 0,
                          (index) => DataRow(cells: [
                                DataCell(Text((index + 1).toString())),
                                DataCell(Text(
                                    specs[index]['node']['qty'].toString())),
                                DataCell(Text(
                                    specs[index]['node']['kw'].toString())),
                                DataCell(Text(
                                    specs[index]['node']['rpm'].toString())),
                                DataCell(Text(specs[index]['node']['voltage']
                                    .toString())),
                                DataCell(Text(
                                    f.format(specs[index]['node']['price']))),
                              ])),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
//                      crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'قیمت کل',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          Text(
                            '${f.format(proforma!['prices']['priceNoVat'])}',
                            style: TextStyle(
                                fontSize: 18, fontFamily: "B-nazanin"),
                          ),
                          Text(
                            'ارزش افزوده',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          Text('${f.format(proforma!['prices']['priceVat'])}',
                              style: TextStyle(
                                  fontSize: 18, fontFamily: "B-nazanin")),
                          Text(
                            'قیمت با ارزش افزوده',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          Text(
                              '${f.format(proforma!['prices']['priceWithVat'])}',
                              style: TextStyle(
                                  fontSize: 18, fontFamily: "B-nazanin")),
                        ],
                      ),
                    ],
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
