import 'package:flutter/material.dart';

class MyDatePickerInput extends StatefulWidget {
  @override
  _MyDatePickerInputState createState() => _MyDatePickerInputState();
}

class _MyDatePickerInputState extends State<MyDatePickerInput> {
  TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () {},
      controller: _controller,
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

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
