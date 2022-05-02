import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _State();
}

class _State extends State<Home> {
  bool _tile1 = false;
  bool _tile2 = false;
  bool _tile3 = false;
  bool _tile4 = false;
  bool _tile5 = false;

  @override
  Widget build(BuildContext context) {
    print("built method Home"); // <-- setState triggers build here!
    return Scaffold(
        appBar: AppBar(title: const Text("Demo")),
        body: Center(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              SwitchListTile(
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.red,
                  title: Text("Switch is ${_tile1 ? "on" : "off"}"),
                  value: _tile1,
                  onChanged: (_) {
                    setState(() {
                      _tile1 = !_tile1;
                    });
                  }),
              SwitchListTile(
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.red,
                  title: Text("Switch is ${_tile2 ? "on" : "off"}"),
                  value: _tile2,
                  onChanged: (_) {
                    setState(() {
                      _tile2 = !_tile2;
                    });
                  }),
              SwitchListTile(
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.red,
                  title: Text("Switch is ${_tile3 ? "on" : "off"}"),
                  value: _tile3,
                  onChanged: (_) {
                    setState(() {
                      _tile3 = !_tile3;
                    });
                  }),
              SwitchListTile(
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.red,
                  title: Text("Switch is ${_tile4 ? "on" : "off"}"),
                  value: _tile4,
                  onChanged: (_) {
                    setState(() {
                      _tile4 = !_tile4;
                    });
                  }),
              SwitchListTile(
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.red,
                  title: Text("Switch is ${_tile5 ? "on" : "off"}"),
                  value: _tile5,
                  onChanged: (_) {
                    setState(() {
                      _tile5 = !_tile5;
                    });
                  })
            ])));
  }
}
