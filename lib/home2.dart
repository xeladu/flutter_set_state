import 'package:flutter/material.dart';

class Home2 extends StatefulWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  State<Home2> createState() => _State();
}

class _State extends State<Home2> {
  @override
  Widget build(BuildContext context) {
    print("built method Home2");
    return Scaffold(
        appBar: AppBar(title: const Text("Demo")),
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
              Switch(),
              Switch(),
              Switch(),
              Switch(),
              Switch()
            ])));
  }
}

class Switch extends StatefulWidget {
  const Switch({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _SwitchState();
}

class _SwitchState extends State<Switch> {
  bool _value = false;

  @override
  Widget build(BuildContext context) {
    print("build method Switch"); // <-- setState triggers build here!
    return SwitchListTile(
        activeColor: Colors.green,
        inactiveThumbColor: Colors.red,
        title: Text("Switch is ${_value ? "on" : "off"}"),
        value: _value,
        onChanged: (_) {
          setState(() {
            _value = !_value;
          });
        });
  }
}
