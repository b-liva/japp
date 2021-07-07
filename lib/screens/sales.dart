import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart' as intl;

class Sales extends StatefulWidget {
  @override
  _SalesState createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  TextEditingController daysController = new TextEditingController();
  var f = intl.NumberFormat("#,###");

//  var f = intl.NumberFormat.currency(locale: "en_US", symbol: "ریال");
  String days = '30';
  String sales = """
  query fetchSalesData(\$days:Int){
  salesTotal(days:\$days)
  incomeTotal(days:\$days)
  }
  """;

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          title: Text('فروش'),
        ),
        body: Query(
          options: QueryOptions(document: gql(sales), variables: {'days': days}),
          builder: (
            QueryResult result, {
            Refetch? refetch,
            FetchMore? fetchMore,
          }) {
            if (result.isLoading) {
              return Center(child: CircularProgressIndicator());
            }
            var saleData = result.data;

            return Column(
              children: [
                TextField(
                    controller: daysController,
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.right),
                TextButton(
                  onPressed: () {
                    setState(() {
                      days = daysController.text;
                    });
                    refetch!();
                  },
                  child: Text('update'),
                ),
                Text('میزان فروش و دریافتی در $days روز اخیر'),
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Expanded(
                      child: Container(
//                    width: 200,
//                    padding: EdgeInsets.all(5),
                        child: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Column(
                              children: [
                                Text(
                                  'فروش',
                                  style: TextStyle(
                                      fontSize: 20,
                                      letterSpacing: 2,
                                      color: Colors.blueAccent),
                                ),
                                Text(f.format(saleData!['salesTotal']))
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
//                    width: 200,
//                    padding: EdgeInsets.all(15.0),
                        child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0)),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Column(
                                children: [
                                  Text(
                                    'دریافتی',
                                    style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(f.format(saleData['incomeTotal']))
                                ],
                              ),
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
