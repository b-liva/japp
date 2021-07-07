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

    return MaterialApp(
        home: Directionality(
            textDirection: TextDirection.rtl,
            child: Scaffold(
              body: GridView.count(
                crossAxisCount: 1,
                children: [
                  Center(child: Text('charts')),
                  GridView.count(
                    primary: false,
                    crossAxisCount: 3,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    children: [
                      Container(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/users');
                          },
                          child: Text('کارشناسان'),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/stats');
                          },
                          child: Text('سفارش ها'),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/sales');
                          },
                          child: Text('فروش'),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/customer');
                          },
                          child: Text('مشتریان'),
                        ),
                      ),
                      Container(
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/dash');
                          },
                          child: Text('dash'),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
