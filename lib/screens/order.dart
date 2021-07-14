import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  TextEditingController numberController = new TextEditingController();
  String number = '';
  String getOrder = """
  query getOrder1(\$number:Int){
  orderByNumber(number:\$number) {
    id
    number
    dateFa
    customer{
      name
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
          title: Text('Order'),
        ),
        body: Query(
          options: QueryOptions(
            document: gql(getOrder),
            variables: {'number': number},
          ),
          builder: (
            QueryResult result, {
            Refetch? refetch,
            FetchMore? fetchMore,
          }) {
            if (result.isLoading) {
              return Center(child: CircularProgressIndicator());
            }
            var orderRes = result.data;
            print(orderRes);

            return Column(
              children: [
                TextField(
                  controller: numberController,
                  keyboardType: TextInputType.number,
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      number = numberController.text;
                    });
                    refetch!();
                  },
                  child: Text('get'),
                ),
                Text('شماره درخواست: ${orderRes?['orderByNumber']['number']}'),
                Text(orderRes?['orderByNumber']['customer']['name'] ?? ''),
                Text(orderRes?['orderByNumber']['dateFa'] ?? ''),
              ],
            );
          },
        ),
      ),
    );
  }
}
