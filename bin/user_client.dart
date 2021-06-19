import 'package:jcm/user_client.dart';

void main(List<String> arguments) {
  final usersReq = GFetchSaleExpsReq((b) => b
    ..vars.isSales = true
    ..vars.isCustomer = false);
  final client = initClient('http://localhost/graphql/');

  client.request(usersReq).listen((response) {
    final results = response.data!.allUsers!.edges;
    results.forEach((user) {
      print(user.node!.id);
      print(user.node!.username);
    });
  });
}
