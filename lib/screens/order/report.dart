import 'package:flutter/material.dart';
import 'package:flutter_linear_datepicker/flutter_datepicker.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:japp/main.dart';
import 'package:japp/screens/order.dart';
import 'package:shamsi_date/shamsi_date.dart';

class Filters {
  String? customerName;

  String? orderDateStart;

  String? orderDateEnd;

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
  query filterOrders(\$order_date_end:String,\$order_date_start:String, \$customer_name:String, \$number:Int){
  orderReport(
    first:50,
    customer: \$customer_name,
    number_Contains:\$number,
    dateFa_Gte:\$order_date_start,
    dateFa_Lte:\$order_date_end,
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
                "order_date_start": filters.orderDateStart,
                "order_date_end": filters.orderDateEnd
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
                      Container(
                        padding: EdgeInsets.all(25),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Flexible(
                                  child: TextField(
                                    decoration: InputDecoration(hintText: "شماره"),
                                    controller: numberController,
                                    keyboardType: TextInputType.number,
                                  ),
                                ),
                                Flexible(
                                  flex: 3,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "مشتری",
                                    ),
                                    controller: customerController,
                                    keyboardType: TextInputType.text,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        TextButton.icon(
                                          onPressed: () async {
                                            filters.orderDateStart = filters.orderDateStart !=
                                                null
                                                ? filters.orderDateStart!.replaceAll('-', "/")
                                                : formatJalali(Jalali.now());

                                            showDialog(
                                            context: context,
                                            builder: (_) => AlertDialog(
                                            title: Text('انتخاب تاریخ', textDirection: TextDirection.rtl,),
                                            content: LinearDatePicker(
                                            dateChangeListener:
                                            (String selectedDate) {
                                            filters.orderDateStart =
                                            selectedDate.replaceAll(
                                            '/', '-');
                                            },
                                            isJalaali: true),
                                            ));
                                            }, icon: Icon(Icons.calendar_today_rounded, size: 16,), label: Text(
                                          "از",
                                        ),
                                        ),
                                        Text(filters.orderDateStart!= null ? filters.orderDateStart.toString() : "")
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        TextButton.icon(
                                          icon: Icon(Icons.calendar_today_rounded, size: 16,),
                                          label: Text('تا'),
                                          onPressed: () async {
                                            filters.orderDateEnd = filters.orderDateEnd !=
                                                null
                                                ? filters.orderDateEnd!.replaceAll('-', "/")
                                                : formatJalali(Jalali.now());

                                            showDialog(
                                            context: context,
                                            builder: (_) => AlertDialog(
                                            title: Text('انتخاب تاریخ', textDirection: TextDirection.rtl,),
                                            content: LinearDatePicker(
                                            dateChangeListener:
                                            (String selectedDate) {
                                            filters.orderDateEnd =
                                            selectedDate.replaceAll(
                                            '/', '-');
                                            },
                                            isJalaali: true),
                                            ));
                                            },
                                        ),
                                        Text(filters.orderDateEnd != null ? filters.orderDateEnd.toString() : "")
                                      ],
                                    ),
                                  ],
                                ),
                              ],
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
                              child: Text('جستجو'),
                            ),
                          ],
                        ),
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
