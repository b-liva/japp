import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  initMethod(context) {
    Navigator.of(context).pushReplacementNamed('/users');
  }

  @override
  Widget build(BuildContext context) {
//    WidgetsBinding.instance.addPostFrameCallback((_) => initMethod(context));

    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/users');
              },
              label: Text('users'),
              icon: Icon(Icons.edit_location),

            ),
            TextButton.icon(
              onPressed: () {
                Navigator.pushNamed(context, '/stats');
              },
              label: Text('Stats'),
              icon: Icon(Icons.download_sharp),
            )
          ],
        )
      )
    );
  }
}
