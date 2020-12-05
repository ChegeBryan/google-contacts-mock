import 'package:flutter/material.dart';

class MyDatePickerInput extends StatefulWidget {
  @override
  _MyDatePickerInputState createState() => _MyDatePickerInputState();
}

class _MyDatePickerInputState extends State<MyDatePickerInput> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {},
      initialValue: '23/04/1998',
      decoration: InputDecoration(
        icon: Icon(Icons.event),
        labelText: "Date",
        suffixIcon: Icon(Icons.keyboard_arrow_down),
        border: OutlineInputBorder(),
      ),
      readOnly: true,
    );
  }
}
