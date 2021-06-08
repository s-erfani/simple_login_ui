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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  margin: const EdgeInsets.all(32),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Sign in",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
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
                        const SizedBox(height: 8),
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
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45.0),
                            )),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 32, vertical: 8),
                            child: Text(
                              'Login',
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an Account?'),
                    const SizedBox(width: 8),
                    Text(
                      'Sign Up',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
