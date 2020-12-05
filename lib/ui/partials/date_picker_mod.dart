import 'package:flutter/material.dart';

class MyDatePickerInput extends StatefulWidget {
  @override
  _MyDatePickerInputState createState() => _MyDatePickerInputState();
}

class _MyDatePickerInputState extends State<MyDatePickerInput> {
  TextEditingController _controller;
  DateTime _selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: () => _selectDate(context),
      controller: _controller,
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

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
        _controller.text = _selectedDate.toString();
      });
    }
  }
}
