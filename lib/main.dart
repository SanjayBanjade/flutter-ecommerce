import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/home.dart';
import './providers/products.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Products>(
      builder: (_) => Products(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AppHome(),
        initialRoute: '/',
        routes: {},
      ),
    );
  }
}
