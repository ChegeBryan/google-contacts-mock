import 'package:flutter/material.dart';

class CustomButtonFormField extends StatefulWidget {
  const CustomButtonFormField({
    Key key,
  }) : super(key: key);

  @override
  _CustomButtonFormFieldState createState() => _CustomButtonFormFieldState();
}

class _CustomButtonFormFieldState extends State<CustomButtonFormField> {
  @override
  Widget build(BuildContext context) {
    int _dropdownValue = 1;

    return Padding(
      padding: EdgeInsets.only(left: 56.0, top: 8.0, right: 130.0),
      child: DropdownButtonFormField(
        value: _dropdownValue,
        items: [
          DropdownMenuItem(child: Text("Mobile"), value: 1),
          DropdownMenuItem(child: Text("Home"), value: 2),
          DropdownMenuItem(child: Text("Work"), value: 3),
        ],
        onChanged: (value) {
          setState(() {
            _dropdownValue = value;
          });
        },
        decoration: InputDecoration(
          labelText: "Label",
          floatingLabelBehavior: FloatingLabelBehavior.always,
          isDense: true,
          border: OutlineInputBorder(),
        ),
      ),
    );
  }
}
