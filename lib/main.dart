import 'package:flutter/material.dart';

import 'app/screens/list_currencies_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Projetinho',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListCurrencies(title: 'Home'),
    );
  }
}

