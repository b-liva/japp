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
                Expanded(
                  child: ListView.builder(
                    itemCount: data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: EdgeInsets.all(5),
                        child: Card(
                          child: Column(
                            children: [
                              ListTile(
                                onTap: () {},
                                title: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  textDirection: TextDirection.rtl,
                                  children: [
                                    Text(data[index]['node']['title'], style: TextStyle(fontSize: 20),),
                                  ],
                                ),
                              ),
                              Row(
                                textDirection: TextDirection.rtl,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    children: [
                                      Text("${f.format(data[index]['node']['salesQtyByDays'])}دستگاه "),
                                      Text("${f.format(data[index]['node']['salesKwByDays']['amount'])} کیلووات "),
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Text("${f.format(data[index]['node']['salesAmountByDays']['amount'])} ریال"),
                                      Text("${f.format(data[index]['node']['salesPricePerKw'])} بر کیلووات ")
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            );
          }),
    );
  }
}
