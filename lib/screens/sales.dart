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
    return Scaffold(
      appBar: AppBar(
        title: Text('Sales'),
      ),
      body: Query(
        options: QueryOptions(document: gql(sales), variables: {'days': days}),
        builder: (
          QueryResult result, {
          Refetch? refetch,
          FetchMore? fetchMore,
        }) {
          if (result.isLoading){
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
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('فروش'),
                  Text(f.format(saleData!['salesTotal']))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                textDirection: TextDirection.rtl,
                children: [
                  Text('دریافتی'),
                  Text(f.format(saleData['incomeTotal']))
                ],
              )
            ],
          );
        },
      ),
    );
  }
}
