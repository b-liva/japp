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

  String cursorBefore = "";
  String cursorAfter = "";
  String firstLast = "last";
}

class OrderReport extends StatefulWidget {
  static const routeName = '/order_report';

  @override
  _OrderReportState createState() => _OrderReportState();
}

class _OrderReportState extends State<OrderReport> {
//  List<Object?> orders = List.empty();
  bool toScroll = true;
  ScrollController scrollController = ScrollController();

  void _scrollToend() {
    scrollController.jumpTo(scrollController.position.maxScrollExtent);
  }

  TextEditingController customerController = new TextEditingController();
  TextEditingController numberController = new TextEditingController();

  Filters filters = Filters();

  String oq = """
  query filterOrders(\$before:String, \$after:String, \$order_date_end:String,\$order_date_start:String, \$customer_name:String, \$number:Int){
  orderReport(
    first:10,
    customer: \$customer_name,
    number_Contains:\$number,
    dateFa_Gte:\$order_date_start,
    dateFa_Lte:\$order_date_end,
    after:\$after
    before:\$before
  ) {
    pageInfo{
      hasNextPage
      hasPreviousPage
      startCursor
      endCursor
    }
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
                "order_date_end": filters.orderDateEnd,
                "after": filters.cursorAfter
              }),
              builder: (
                QueryResult result, {
                Refetch? refetch,
                FetchMore? fetchMore,
              }) {
                if (result.isLoading && toScroll) {
                  return Center(child: CircularProgressIndicator());
                }
                
                toScroll = false;
                var orders = result.data!['orderReport']['edges'] ?? [];
                var pageInfo = result.data!['orderReport']['pageInfo'];

                FetchMoreOptions opts = FetchMoreOptions(
                  variables: {"after": pageInfo['endCursor']},
                  updateQuery: (prev, res) {
                    // this is where you combine your previous data and response
                    // in case of this, we want to display previous repos plus next repos
                    // so, we combine data in both into a single list of repos
                    final List<Object?> orders = [
                      ...prev!['orderReport']['edges'] as List<Object?>,
                      ...res!['orderReport']['edges'] as List<Object?>
                    ];

                    // to avoid alot of work, lets just update the list of repos in returned
                    // data with new data, this also ensure we have the endCursor already set
                    // correctlty
                    res['orderReport']['edges'] = orders;
                    return res;
                  },
                );

                return SingleChildScrollView(
                  controller: scrollController,
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
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.blue),
                                      decoration:
                                          InputDecoration(hintText: "شماره"),
                                      controller: numberController,
                                      keyboardType: TextInputType.number,
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 3,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: TextField(
                                      style: TextStyle(
                                          fontSize: 12, color: Colors.blue),
                                      decoration: InputDecoration(
                                        hintText: "مشتری",
                                      ),
                                      controller: customerController,
                                      keyboardType: TextInputType.text,
                                    ),
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
                                            filters.orderDateStart = filters
                                                        .orderDateStart !=
                                                    null
                                                ? filters.orderDateStart!
                                                    .replaceAll('-', "/")
                                                : formatJalali(Jalali.now());

                                            showDialog(
                                                context: context,
                                                builder: (_) => AlertDialog(
                                                      title: Text(
                                                        'انتخاب تاریخ',
                                                        textDirection:
                                                            TextDirection.rtl,
                                                      ),
                                                      content: LinearDatePicker(
                                                          dateChangeListener:
                                                              (String
                                                                  selectedDate) {
                                                            filters.orderDateStart =
                                                                selectedDate
                                                                    .replaceAll(
                                                                        '/',
                                                                        '-');
                                                          },
                                                          isJalaali: true),
                                                    ));
                                          },
                                          icon: Icon(
                                            Icons.calendar_today_rounded,
                                            size: 16,
                                          ),
                                          label: Text(
                                            "از",
                                          ),
                                        ),
                                        Text(filters.orderDateStart != null
                                            ? filters.orderDateStart.toString()
                                            : "")
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        TextButton.icon(
                                          icon: Icon(
                                            Icons.calendar_today_rounded,
                                            size: 16,
                                          ),
                                          label: Text('تا'),
                                          onPressed: () async {
                                            filters.orderDateEnd = filters
                                                        .orderDateEnd !=
                                                    null
                                                ? filters.orderDateEnd!
                                                    .replaceAll('-', "/")
                                                : formatJalali(Jalali.now());

                                            showDialog(
                                                context: context,
                                                builder: (_) => AlertDialog(
                                                      title: Text(
                                                        'انتخاب تاریخ',
                                                        textDirection:
                                                            TextDirection.rtl,
                                                      ),
                                                      content: LinearDatePicker(
                                                          dateChangeListener:
                                                              (String
                                                                  selectedDate) {
                                                            filters.orderDateEnd =
                                                                selectedDate
                                                                    .replaceAll(
                                                                        '/',
                                                                        '-');
                                                          },
                                                          isJalaali: true),
                                                    ));
                                          },
                                        ),
                                        Text(filters.orderDateEnd != null
                                            ? filters.orderDateEnd.toString()
                                            : "")
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  toScroll = true;
                                  filters.customerName =
                                      customerController.text.toString();
                                  if (numberController.text != "") {
                                    filters.number =
                                        int.parse(numberController.text);
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
                          headingTextStyle: TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                              fontFamily: "B-nazanin"),
                          dataTextStyle: TextStyle(
                              fontSize: 12.0,
                              color: Colors.black87,
                              fontFamily: "B-nazanin"),
                          columnSpacing: 30.0,
                          columns: [
                            DataColumn(label: Text('ردیف')),
                            DataColumn(label: Text('شماره')),
                            DataColumn(label: Text('مشتری')),
                            DataColumn(label: Text('تاریخ')),
                          ],
                          rows: List.generate(
                              orders.length,
                              (index) => DataRow(cells: [
                                    DataCell(Text((index + 1).toString())),
                                    DataCell(TextButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, Order.routeName,
                                            arguments: OrderArgs(
                                                orders[index]['node']['id'],
                                                number: orders[index]['node']
                                                    ['number']));
                                      },
                                      child: Text(
                                          orders[index]['node']['number']
                                              .toString(),
                                          style: TextStyle(
                                              fontFamily: "B-nazanin")),
                                    )),
                                    DataCell(Container(
                                      width: 150.0,
                                      child: Text(
                                        orders[index]['node']['customer']
                                            ['name'],
                                        style: TextStyle(fontSize: 12),
                                      ),
                                    )),
                                    DataCell(
                                        Text(orders[index]['node']['dateFa'])),
                                  ])),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
//                                  filters.cursorAfter = pageInfo['endCursor'];
//                                  filters.cursorBefore = "";
//                                  filters.firstLast = 'first';
                          });
//                                refetch!();
                          fetchMore!(opts);
                        },
                        child: Text('بیشتر'),
                      ),
                    ],
                  ),
                );
              }),
        ));
  }

  String formatJalali(date) => "${date.year}/${date.month}/${date.day}";
}
