import 'package:flutter/material.dart';
import 'package:jerk_at_nite_client/shared/input_fields.dart';

class RegisterForm extends StatefulWidget {
  RegisterForm({Key key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  final _registerFormKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _fNameController = TextEditingController();
  final _lNameController = TextEditingController();
 
  final _passwordController = TextEditingController();
  String fName;
  String lName;
  String email;

  String password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _registerFormKey,
      child: Column(
        children: [
          //-------First Name Text Field
          TextFormField(
            textAlign: TextAlign.center,
            controller: _fNameController,
            onSaved: (fName) => this.fName = fName,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your first name.';
              }
              return null;
            },
            style: TextStyle(
                color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w100),
            cursorColor: Colors.grey,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid)),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid)),
              errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid)),
              disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid)),
              labelText: 'First Name',
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 24,
                  fontWeight: FontWeight.w100),
            ),
          ),
          //-----Last Name Text Field
            TextFormField(
            textAlign: TextAlign.center,
            controller: _lNameController,
            onSaved: (lName) => this.lName = lName,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your last name.';
              }
              return null;
            },
            style: TextStyle(
                color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w100),
            cursorColor: Colors.grey,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid)),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid)),
              errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid)),
              disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid)),
              labelText: 'Last Name',
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 24,
                  fontWeight: FontWeight.w100),
            ),
          ),

          //------ Email Form Field
              TextFormField(
            textAlign: TextAlign.center,
            controller: _emailController,
            onSaved: (email) => this.email = email,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter your last name.';
              }
              return null;
            },
            style: TextStyle(
                color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w100),
            cursorColor: Colors.grey,
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid)),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid)),
              errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid)),
              disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid)),
              labelText: 'Email Address',
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 24,
                  fontWeight: FontWeight.w100),
            ),
          ),
          TextFormField(
            textAlign: TextAlign.center,
            controller: _passwordController,
            onSaved: (password) => this.password = password,
            validator: (value) {
              if (value.isEmpty) {
                return 'Please enter a valid email address.';
              }
              return null;
            },
            style: TextStyle(
                color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w100),
            cursorColor: Colors.grey,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid)),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid)),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid)),
              errorBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid)),
              disabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                      color: Colors.grey, width: 1, style: BorderStyle.solid)),
              labelText: 'Enter Email Address',
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 24,
                  fontWeight: FontWeight.w100),
            ),
          ),
         
        ],
      ),
    );
  }
}
