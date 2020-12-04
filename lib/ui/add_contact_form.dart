import 'package:flutter/material.dart';

class AddContactFormFields extends StatefulWidget {
  @override
  _AddContactFormFieldsState createState() => _AddContactFormFieldsState();
}

class _AddContactFormFieldsState extends State<AddContactFormFields> {
  // This global key uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(children: <Widget>[
          // Add TextFormFields and ElevatedButton here.
        ]));
  }
}
