import 'package:flutter/material.dart';

class CustomButtonFormField extends StatelessWidget {
  const CustomButtonFormField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 56.0, top: 8.0, right: 130.0),
      child: DropdownButtonFormField(
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
