import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart' as intl;

class CustomerSales extends StatefulWidget {
  @override
  _CustomerSalesState createState() => _CustomerSalesState();
}

class _CustomerSalesState extends State<CustomerSales> {
  TextEditingController daysController = new TextEditingController();
  var f = intl.NumberFormat("#,###");
  String days = '365';
  String customerBySale = """
  query fetchCustomersBySale(\$days:Int){
  customerBySale(days:\$days) {
    customerId
    customerName
    qty
    amount
  }
}
  """;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('مشتریان به ترتیب میزان خرید'),
      ),
      body: Query(
        options: QueryOptions(
            document: gql(customerBySale), variables: {'days': days}),
        builder: (
          QueryResult result, {
          Refetch? refetch,
          FetchMore? fetchMore,
        }) {
          if (result.isLoading) {
            return Center(child: CircularProgressIndicator());
          }
          var customers = result.data!['customerBySale'];
          return ListView.builder(
              itemCount: customers.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(5),
                  child: Card(
                    child: ListTile(
                      onTap: () {},
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        textDirection: TextDirection.rtl,
                        children: [
                          Text(customers[index]['customerName']),
                          Text(customers[index]['qty'].toString()),
                          Text(f.format(customers[index]['amount'])),
                        ],
                      ),
                    ),
                  ),
                );
              });
        },
      ),
    );
  }
}
