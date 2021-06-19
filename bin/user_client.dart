import 'package:jcm/user_client.dart';


void main(List<String> arguments){
  final usersReq = GgetUsersReq();
  final client = initClient('http://localhost/graphql/');
  
  client.request(usersReq).listen((response) {
    final results = response.data!.allUsers!.edges;
    print(results.runtimeType);
    results.forEach((user) {
      print(user.node!.id);
      print(user.node!.username);
    });

  });
}