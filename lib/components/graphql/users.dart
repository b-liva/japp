import 'package:flutter/material.dart';
import 'package:ferry/ferry.dart';
import 'package:get_it/get_it.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:jcm/components/graphql/user/user.data.gql.dart';
import 'package:jcm/components/graphql/user/user.req.gql.dart';
import 'package:jcm/components/graphql/user/user.var.gql.dart';
import 'package:built_collection/built_collection.dart';

class Users extends StatelessWidget {
  final client = GetIt.I<Client>();

  @override
  Widget build(BuildContext context) {
    print('inside users app: ');
    print(client.link);
    return Scaffold(
      appBar: AppBar(
        title: Text('gql'),
      ),
      body: Operation<GFetchSaleExpsData, GFetchSaleExpsVars>(
        client: client,
        operationRequest: GFetchSaleExpsReq((b) => b
          ..vars.isSales = true
          ..vars.isCustomer = false),
        builder: (BuildContext context,
            OperationResponse<GFetchSaleExpsData, GFetchSaleExpsVars>? response,
            Object? error) {
          print('response1');
          if (response!.loading) {
            print('loading');
            return Center(child: CircularProgressIndicator());
          }
          print('response2');

          final users = response.data?.allUsers?.edges ?? BuiltList();
          print('response3');
          print(users.length);

          return ListView.builder(
              itemCount: users.length,
              itemBuilder: (context, index) => Text('we have users'));
        },
      ),
    );
  }
}
