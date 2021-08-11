import 'package:flutter/material.dart';
import 'package:movas_counter_app/router/router.dart';
import 'package:movas_counter_app/provider/provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Movas Counter App',
        theme: ThemeData(primarySwatch: Colors.blue, visualDensity: VisualDensity.adaptivePlatformDensity),
        routes: router.calculateAllRoutes,
        initialRoute: router.initialRoute,
      ),
    );
  }
}
