import 'package:flutter/material.dart';
import 'package:hubble_app/ui/createAccount.dart';
import 'package:hubble_app/ui/dashboard.dart';
import 'package:hubble_app/ui/login.dart';
import 'package:hubble_app/ui/splash.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
      return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(

          primarySwatch: Colors.blue,

          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: <String, WidgetBuilder>{
          '/login': (context) => LoginWidget(),
          '/dashboard': (context) => DashboardWidget(),
        },
        home: DashboardWidget()
      );
  }
}