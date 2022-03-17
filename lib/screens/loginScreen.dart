import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
          Widget>[
        Container(
          padding: EdgeInsets.all(30),
          child: TextField(
            decoration: InputDecoration(label: Text("ID")),
          ),
        ),
        Container(
          padding: EdgeInsets.all(30),
          child: TextField(
            obscureText: obscure,
            decoration: InputDecoration(
                label: Text("Password"),
                suffixIcon: IconButton(
                  icon: Icon(obscure ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      obscure = !obscure;
                    });
                  },
                )),
          ),
        ),
        Container(
          padding: EdgeInsets.all(30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              OutlinedButton(
                onPressed: () {},
                child: Text("Regist"),
              ),
              OutlinedButton(
                onPressed: () {},
                child: Text("Login"),
              )
            ],
          ),
        )
      ]),
    );
  }
}
