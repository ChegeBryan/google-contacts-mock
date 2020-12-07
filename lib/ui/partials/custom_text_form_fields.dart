import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final IconData icon;
  final String labelText;
  final TextInputType keyboardInputType;

  const CustomTextFormField({
    this.keyboardInputType = TextInputType.text,
    this.labelText,
    this.icon,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 40.0, top: 16.0),
      child: ListTile(
        title: TextFormField(
          keyboardType: keyboardInputType,
          decoration: InputDecoration(
            icon: Icon(icon),
            labelText: labelText,
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
