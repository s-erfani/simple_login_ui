import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool boxVal = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(color: Colors.lightBlue),
          child: Center(
            child: Card(
              margin: const EdgeInsets.all(32),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("Sign in"),
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.mail_outline),
                          labelText: "Email",
                          border: InputBorder.none),
                    ),
                    TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.lock_outline),
                          labelText: "Password",
                          border: InputBorder.none),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        'Forgot Password?',
                        textAlign: TextAlign.end,
                      ),
                    ),
                    CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        contentPadding: const EdgeInsets.all(0),
                        title: Text("Remember Me"),
                        value: boxVal,
                        onChanged: (val) {
                          setState(() {
                            boxVal = val!;
                          });
                        }),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
