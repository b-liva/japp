import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart' as intl;

class Sales extends StatefulWidget {
  @override
  _SalesState createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  var f = intl.NumberFormat("#,###");
//  var f = intl.NumberFormat.currency(locale: "en_US", symbol: "ریال");
  int days = 30;
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
          var sale_data = result.data;

          return Column(
            children: [
              Row(
                textDirection: TextDirection.rtl,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('فروش'),
                  Text(f.format(sale_data!['salesTotal']))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                textDirection: TextDirection.rtl,
                children: [
                  Text('دریافتی'),
                  Text(f.format(sale_data['incomeTotal']))
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
