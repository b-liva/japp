import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:intl/intl.dart' as intl;
import 'package:japp/screens/proforma.dart';

class PaymentArgs {
  final String id;
  final double amount;

  PaymentArgs(this.id, this.amount);
}

class Payment extends StatelessWidget {
  static const routeName = '/payment';
  var f = intl.NumberFormat("#,###");
  var fd = intl.NumberFormat("#.#");

  String getPayment = """
  query getPaymnet(\$id:ID!){
  payment(id:\$id) {
    id
    amount
    xprefId{
      number
      id
    }
  }
}
  """;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as PaymentArgs;

    return Directionality(
        textDirection: TextDirection.rtl,
        child: Query(
          options: QueryOptions(
            document: gql(getPayment),
            variables: {'id': args.id},
          ),
          builder: (
            QueryResult result, {
            Refetch? refetch,
            FetchMore? fetchMore,
          }) {
            if (result.isLoading) {
              return Center(child: CircularProgressIndicator());
            }
            var payment = result.data!['payment'];

            return Scaffold(
              appBar: AppBar(
                title: Text('payment'),
              ),
              body: Column(
                children: [
                  Text("مبلغ: ${f.format(payment['amount'])}"),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Proforma.routeName,
                          arguments:
                              ProformaArgs(payment['xprefId']['id']));
                    },
                    child: Text(payment['xprefId']['number'].toString()),
                  )
                ],
              ),
            );
          },
        ));
  }
}
