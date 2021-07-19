import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart' as intl;
import 'package:japp/screens/payment.dart';

class ProformaArgs {
  final String id;
  final int number;

  ProformaArgs(this.id, this.number);
}

class Proforma extends StatelessWidget {
  static const routeName = '/proforma';
  var f = intl.NumberFormat("#,###");
  var fd = intl.NumberFormat("#.#");

  String getProforma = """
  query getProforma(\$id:ID!){
  proforma(id:\$id){
    number
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
      child: Query(
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

          return Scaffold(
            appBar: AppBar(
              title: Text('proforma'),
            ),
            body: Column(
              children: [
//                Text(args.number.toString()),
                Text(proforma!['number'].toString()),
                Text(proforma!['reqId']['customer']['name']),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: DataTable(
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
                              DataCell(
                                  Text(specs[index]['node']['qty'].toString())),
                              DataCell(
                                  Text(specs[index]['node']['kw'].toString())),
                              DataCell(
                                  Text(specs[index]['node']['rpm'].toString())),
                              DataCell(Text(
                                  specs[index]['node']['voltage'].toString())),
                              DataCell(Text(
                                  f.format(specs[index]['node']['price']))),
                            ])),
                  ),
                ),
                Text('قیمت کل:${f.format(proforma!['prices']['priceNoVat'])}'),
                Text(
                    'ارزش افزوده:${f.format(proforma!['prices']['priceVat'])}'),
                Text(
                    'قیمت با ارزش افزوده:${f.format(proforma!['prices']['priceWithVat'])}'),
                Text('دریافتی'),
                ...List<Widget>.generate(payments?.length ?? 0, (int index) {
                  return TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, Payment.routeName,
                            arguments: PaymentArgs(
                                payments[index]['node']['id'],
                                payments[index]['node']['amount']));
                      },
                      child:
                          Text(f.format(payments[index]['node']['amount'])));
                })
              ],
            ),
          );
        },
      ),
    );
  }
}
