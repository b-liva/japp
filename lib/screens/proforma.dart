import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class ProformaArgs {
  final String id;
  final int number;

  ProformaArgs(this.id, this.number);
}

class Proforma extends StatelessWidget {
  static const routeName = '/proforma';

  String getProforma = """
  query getProforma(\$id:ID!){
  proforma(id:\$id){
    number
    reqId{
      customer{
        name
      }
    }
  }
}
  """;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ProformaArgs;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Query(
        options: QueryOptions(
          document: gql(getProforma),
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
          var proforma = result.data!['proforma'];

          return Scaffold(
            appBar: AppBar(
              title: Text('proforma'),
            ),
            body: Column(
              children: [
//                Text(args.number.toString()),
                Text(proforma!['number'].toString()),
                Text(proforma!['reqId']['customer']['name']),
              ],
            ),
          );
        },
      ),
    );
  }
}
