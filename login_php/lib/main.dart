// ignore_for_file: avoid_print, unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'si.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'login';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Form(
                child: Theme(
                  data: ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.teal,
                      inputDecorationTheme: InputDecorationTheme(
                          labelStyle:
                              TextStyle(color: Colors.teal, fontSize: 20.0))),
                  child: new Container(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                              decoration: InputDecoration(
                                labelText: "enter username",
                              ),
                              keyboardType: TextInputType.text),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "enter password",
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                          ),
                          new MaterialButton(
                            onPressed: () => {},
                            splashColor: Colors.redAccent,
                            color: Colors.blue,
                            textColor: Colors.white,
                            child: new Text("Login"),
                          ),
                          TextButton(
                            child: const Text(
                              'Sign in',
                              style: TextStyle(fontSize: 20),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SecondRoute()),
                              );
                            },
                          )
                        ],
                      )),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Form(
                child: Theme(
                  data: ThemeData(
                      brightness: Brightness.dark,
                      primarySwatch: Colors.teal,
                      inputDecorationTheme: InputDecorationTheme(
                          labelStyle:
                              TextStyle(color: Colors.teal, fontSize: 20.0))),
                  child: new Container(
                      padding: const EdgeInsets.all(40.0),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "enter email",
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                          TextFormField(
                              decoration: InputDecoration(
                                labelText: "enter username",
                              ),
                              keyboardType: TextInputType.text),
                          TextFormField(
                            decoration: InputDecoration(
                              labelText: "enter password",
                            ),
                            keyboardType: TextInputType.text,
                            obscureText: true,
                          ),
                          new Padding(
                            padding: const EdgeInsets.only(top: 20.0),
                          ),
                          new MaterialButton(
                            onPressed: () => {},
                            splashColor: Colors.redAccent,
                            color: Colors.blue,
                            textColor: Colors.white,
                            child: new Text("register"),
                          ),
                          TextButton(
                            child: const Text(
                              'log in',
                              style: TextStyle(fontSize: 20),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const MyStatefulWidget()),
                              );
                            },
                          )
                        ],
                      )),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
