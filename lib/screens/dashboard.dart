import 'package:jcm/config/client.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class Dashboard extends StatelessWidget {
  Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<String>(
      builder: (BuildContext ctx, AsyncSnapshot<String> snapshot) {
        Widget children = Text('Something went wrong!');

        if (snapshot.hasData) {
          children = GraphQLProvider(
            client: Config.initailizeClient(),
            child: Text('hi'),
          );
        }

        return children;
      },
    );
  }
}
