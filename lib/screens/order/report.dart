import 'package:flutter/material.dart';
import 'package:flutter_linear_datepicker/flutter_datepicker.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:japp/main.dart';
import 'package:japp/screens/order.dart';
import 'package:shamsi_date/shamsi_date.dart';

class Filters {
  String? customerName;

  String? orderDateStart;

  int? number;
}

class OrderReport extends StatefulWidget {
  static const routeName = '/order_report';

  @override
  _OrderReportState createState() => _OrderReportState();
}

class _OrderReportState extends State<OrderReport> {
  TextEditingController customerController = new TextEditingController();
  TextEditingController numberController = new TextEditingController();

  Filters filters = Filters();

  String oq = """
  query filterOrders(\$order_date_start:String, \$customer_name:String, \$number:Int){
  orderReport(
    first:50,
    customer: \$customer_name,
    number_Contains:\$number,
    dateFa_Gte:\$order_date_start
  ) {
    edges {
      node {
        id
        number
        dateFa
        customer {
          id
          name
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
            title: Text('گزاش درخواست'),
          ),
          body: Query(
              options: QueryOptions(document: gql(oq), variables: {
                "customer_name": filters.customerName,
                "number": filters.number,
                "order_date_start": filters.orderDateStart
              }),
              builder: (
                QueryResult result, {
                Refetch? refetch,
                FetchMore? fetchMore,
              }) {
                if (result.isLoading) {
                  return Center(child: CircularProgressIndicator());
                }

                var orders = result.data!['orderReport']['edges'] ?? [];
                return SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: "مشتری",
                        ),
                        controller: customerController,
                        keyboardType: TextInputType.text,
                      ),
                      TextField(
                        decoration: InputDecoration(hintText: "شماره"),
                        controller: numberController,
                        keyboardType: TextInputType.number,
                      ),
                      TextButton(
                        child: Text(
                          "تاریخ درخواست(از)",
                        ),
                        onPressed: () async {
                          filters.orderDateStart =
                              filters.orderDateStart != null
                                  ? filters.orderDateStart!.replaceAll('-', "/")
                                  : formatJalali(Jalali.now());

                          showDialog(
                              context: context,
                              builder: (_) => AlertDialog(
                                    title: Text('Choose Date'),
                                    content: LinearDatePicker(
                                        dateChangeListener:
                                            (String selectedDate) {
                                          filters.orderDateStart =
                                              selectedDate.replaceAll('/', '-');
                                        },
                                        isJalaali: true),
                                  ));
                        },
                      ),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            filters.customerName =
                                customerController.text.toString();
                            if (numberController.text != "") {
                              filters.number = int.parse(numberController.text);
                            } else {
                              filters.number = 0;
                            }
                          });
                          refetch!();
                        },
                        child: Text('get'),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                          columns: [
                            DataColumn(label: Text('شماره')),
                            DataColumn(label: Text('مشتری')),
                            DataColumn(label: Text('تاریخ')),
                          ],
                          rows: List.generate(
                              orders.length,
                              (index) => DataRow(cells: [
                                    DataCell(TextButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                              context, Order.routeName,
                                              arguments: OrderArgs(
                                                  orders[index]['node']['id'],
                                                  number: orders[index]['node']
                                                      ['number']));
                                        },
                                        child: Text(orders[index]['node']
                                                ['number']
                                            .toString()))),
                                    DataCell(Text(orders[index]['node']
                                        ['customer']['name'])),
                                    DataCell(
                                        Text(orders[index]['node']['dateFa'])),
                                  ])),
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ));
  }

  String formatJalali(date) => "${date.year}/${date.month}/${date.day}";
}
