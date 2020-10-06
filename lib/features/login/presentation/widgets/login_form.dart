import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  // ignore: non_constant_identifier_namesflutter
  final login_formKey = GlobalKey<FormState>();
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: this.login_formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            TextFormField(
              autovalidate: false,
              onSaved: (value) => this.email = value,
              validator: (value) {
                if (value.length < 11) {
                  return 'Invalid email, not enough characters -- ADD REGEX FOR @.###';
                }
                return null;
              },
            ),
            TextFormField(
              autovalidate: false,
              onSaved: (value) => this.password = value,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter a valid password';
                }
                return null;
              },
            ),
            RaisedButton(
                child: Text('Submit'),
                onPressed: () {
                  if (this.login_formKey.currentState.validate()) {
                    setState(() {
                      this.login_formKey.currentState.save();
                    });
                  }
                })
          ],
        ));
  }
}
