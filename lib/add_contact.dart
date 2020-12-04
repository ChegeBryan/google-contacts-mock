import 'package:flutter/material.dart';

class AddContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Create contact",
          style: TextStyle(
            color: Colors.grey[800],
          ),
        ),
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.grey[700],
        ),
        backgroundColor: Colors.grey[50],
      ),
    );
  }
}
