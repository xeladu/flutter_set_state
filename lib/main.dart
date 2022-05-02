import 'package:flutter/material.dart';
import 'package:flutter_set_state/home.dart';
import 'package:flutter_set_state/home2.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const Home2());
  }
}
