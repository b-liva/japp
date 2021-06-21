import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';

export 'package:jcm/components/graphql/user/user.req.gql.dart';
export 'package:jcm/components/graphql/user/user.var.gql.dart';
export 'package:jcm/components/graphql/user/user.data.gql.dart';

Client initClient(String url) {
  print(url);
  final link = HttpLink(url);
  print('no client');
  final client = Client(link: link);
  print('we have client');
  return client;
}