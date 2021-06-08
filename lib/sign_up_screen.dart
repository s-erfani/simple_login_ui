import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                          "Sign UP",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              icon: Icon(Icons.perm_identity_outlined),
                              labelText: "Full Name",
                              border: InputBorder.none),
                        ),
                        TextField(
                          decoration: InputDecoration(
                              icon: Icon(Icons.phone_iphone_outlined),
                              labelText: "Phone Number",
                              border: InputBorder.none),
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
                        TextField(
                          decoration: InputDecoration(
                              icon: Icon(Icons.lock_outline),
                              labelText: "Confirm Password",
                              border: InputBorder.none),
                        ),
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
                              'Register',
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
                    Text('Have an Account?'),
                    const SizedBox(width: 8),
                    Text(
                      'Sign in',
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
