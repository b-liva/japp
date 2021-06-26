import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart' as intl;

class Dash extends StatefulWidget {
  @override
  _DashState createState() => _DashState();
}

class _DashState extends State<Dash> {
  String days = '2000';
  TextEditingController daysController = new TextEditingController();
  var f = intl.NumberFormat("#,###");


  String salesQuery = """
  query fetchSalesData(\$days:Int){
  allProjectTypes {
    edges {
      node {
        id
        title
        salesQtyByDays(days: \$days)
        salesKwByDays(days:\$days) {
          amount
          percent
        }
        salesAmountByDays(days:\$days) {
          amount
          percent
        }
        salesPricePerKw(days:\$days)
      }
    }
  }
}

  """;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('مجوز'),
      ),
      body: Query(
          options: QueryOptions(
              document: gql(salesQuery), variables: {'days': days}),
          builder: (
            QueryResult result, {
            Refetch? refetch,
            FetchMore? fetchMore,
          }) {
            if (result.isLoading) {
              return Center(child: CircularProgressIndicator());
            }
            var data = result.data!['allProjectTypes']['edges'];
            return ListView.builder(
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: EdgeInsets.all(5),
                  child: Card(
                    child: ListTile(
                      onTap: () {},
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        textDirection: TextDirection.rtl,
                        children: [
                          Text(data[index]['node']['title']),
                          Text(f.format(data[index]['node']['salesQtyByDays'])),
                          Text(f.format(data[index]['node']['salesKwByDays']['amount'])),
//                          Text(data[index]['node']['salesAmountByDays']['amount']
//                              .toString()),
//                          Text(data[index]['node']['salesPricePerKw']
//                              .toString()),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }),
    );
  }
}
