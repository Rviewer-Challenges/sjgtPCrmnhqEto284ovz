import 'package:flutter/material.dart';
import 'package:memory/src/utils/route.dart';

class MemoryApp extends StatelessWidget {
  const MemoryApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        initialRoute: '/',
        routes: routes(),
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
              builder: (BuildContext build) => defaultRoute());
        },
        debugShowCheckedModeBanner: false,
        title: 'MemoryApp',
        theme: ThemeData(
          platform: TargetPlatform.android,
          primarySwatch: Colors.blue,
        ));
  }
}
