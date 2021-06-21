//import 'package:jcm/user_client.dart';
import 'package:jcm/client.dart';
import 'package:get_it/get_it.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'components/graphql/app.dart';
import 'project_stats.dart';

import 'package:jcm/components/graphql/user/user.req.gql.dart';
import 'package:jcm/components/graphql/user/user.var.gql.dart';
import 'package:jcm/components/graphql/user/user.data.gql.dart';

void main() async{
  final client = await initClient();
  print('client set');
  GetIt.I.registerLazySingleton<Client>(() => client);
  print('client singleton');
//  runApp(MaterialApp(
//    home: Home(),
//  ));
  runApp(App());
}

//class Home extends StatefulWidget {
//  @override
//  _HomeState createState() => _HomeState();
//}
//
//class _HomeState extends State<Home> {
//  int monthMw = 12;
//  int yearMw = 95;
//
//  final usersReq = GFetchSaleExpsReq((b) => b
//    ..vars.isSales = true
//    ..vars.isCustomer = false);
////  final client = initClient('http://localhost/graphql/');
//
//  void initState() {
//    print('before');
//    super.initState();
//    print('after');
//  }
//
//  void getUsers() {
//    print('get users 01');
//    final usersReq = GFetchSaleExpsReq((b) => b
//      ..vars.isSales = true
//      ..vars.isCustomer = false);
//    print('get users 02');
////    final client = initClient('http://localhost/graphql/');
//    print('get users 03');
//
//    client.request(usersReq).listen((response) {
//      final results = response.data!.allUsers!.edges;
//      if (results.isNotEmpty) {
//        print('get users 04');
//        results.forEach((user) {
//          print(user.node!.id);
//          print(user.node!.username);
//        });
//      }
//    });
//  }
//
//  Widget projectTypeTemplate(pr) {
//    return Card(
//      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
//      child: Column(
//        children: [
//          Padding(
//            padding: EdgeInsets.all(10),
//            child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//              textDirection: TextDirection.rtl,
//              children: [
//                Text('${pr.title}'),
//                Text('${pr.mw} MW'),
//                Text('${pr.sales}'),
//              ],
//            ),
//          )
//        ],
//      ),
//    );
//  }
//
//  List<ProjectTypeStats> prTypeData = [
//    ProjectTypeStats(title: 'پروژه', mw: 8, sales: 12000),
//    ProjectTypeStats(title: 'روتین', mw: 6, sales: 8000),
//    ProjectTypeStats(title: 'تعمیرات', mw: 2, sales: 12000),
//  ];
//
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//        appBar: AppBar(
//          title: Text('JCM '),
////      backgroundColor: Colors.blueAccent[200],
//        ),
//        body: Column(
//          children: [
//            Row(
//              textDirection: TextDirection.rtl,
//              mainAxisAlignment: MainAxisAlignment.spaceAround,
//              children: [
//                Column(
//                  children: [
//                    Text('ماه جاری'),
//                    SizedBox(height: 10),
//                    Text('$monthMw MW'),
//                    SizedBox(height: 10),
//                    Text('120000 میلیون ریال'),
//                  ],
//                ),
//                Column(
//                  children: [
//                    Text('سال مالی'),
//                    SizedBox(height: 10),
//                    Text('$yearMw MW'),
//                    SizedBox(height: 10),
//                    Text('600000 میلیون ریال'),
//                  ],
//                ),
//              ],
//            ),
//            SizedBox(height: 40),
//            Column(
//              children: prTypeData.map((d) => projectTypeTemplate(d)).toList(),
//            ),
//            Column(
//              children: [
//                ElevatedButton(
//                    onPressed: () => {getUsers()}, child: Text('click')),
//                Operation(
//                  operationRequest: usersReq,
//                  client: client,
//                  builder: (BuildContext context,
//                      OperationResponse<GFetchSaleExpsData, GFetchSaleExpsVars>?
//                          response,
//                      Object? error) {
//                    print('getting data');
//                    final res = response?.data ?? [];
//                    print(res);
//                    return Text('true..');
//                  },
//                )
//              ],
//            )
//          ],
//        ));
//  }
//}
