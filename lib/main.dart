import 'package:flutter/material.dart';
import 'package:flutter_woocommerce/woocommerce/commerce_home.dart';
import 'package:flutter_woocommerce/woocommerce/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Woo-Commerce',
      theme: ThemeData(primarySwatch: Colors.grey, primaryColor: Colors.black),
      home: IndexPage(),
    );
  }
}
