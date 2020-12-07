import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 40.0, top: 16.0),
      child: ListTile(
        title: TextFormField(
          decoration: InputDecoration(
            icon: Icon(Icons.group_work_outlined),
            labelText: "Relationship",
            border: OutlineInputBorder(),
          ),
        ),
      ),
    );
  }
}
