import 'package:flutter/material.dart';
import 'package:jerk_at_nite_client/shared/input_fields.dart';
import 'package:jerk_at_nite_client/shared/screen_dimensions.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _loginFormKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  // final _passwordController = TextEditingController
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    num screenHeight = ScreenDimensions(context).screenHeight;
    num screenWidth = ScreenDimensions(context).screenWidth;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _loginFormKey,
        child: Column(
          children: [
            //SizedBox(height: screenHeight * 0.05),
            //------ Email Form Field
            TextFormField(
              textAlign: TextAlign.center,
              controller: _emailController,
              onSaved: (email) => this.email = email,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter your email address.';
                }
                return null;
              },
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w100),
              cursorColor: Colors.grey,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                        style: BorderStyle.solid)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.green,
                        width: 1,
                        style: BorderStyle.solid)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                        style: BorderStyle.solid)),
                errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                        style: BorderStyle.solid)),
                disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                        style: BorderStyle.solid)),
                labelText: 'Email Address*',
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 24,
                    fontWeight: FontWeight.w100),
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            //------ Password Form Field
            TextFormField(
              textAlign: TextAlign.center,
              // controller: _passwordController,
              onSaved: (password) => this.password = password,
              obscureText: true,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter a password 6 or more characters.';
                }
                return null;
              },
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                  fontWeight: FontWeight.w100),
              cursorColor: Colors.grey,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                        style: BorderStyle.solid)),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.green,
                        width: 1,
                        style: BorderStyle.solid)),
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                        style: BorderStyle.solid)),
                errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                        style: BorderStyle.solid)),
                disabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.grey,
                        width: 1,
                        style: BorderStyle.solid)),
                labelText: 'Enter Password*',
                floatingLabelBehavior: FloatingLabelBehavior.never,
                labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 24,
                    fontWeight: FontWeight.w100),
              ),
            ),
            //          SizedBox(height: screenHeight * 0.05),
            //          SizedBox(height: screenHeight * 0.05),
          ],
        ),
      ),
    );
  }
}
