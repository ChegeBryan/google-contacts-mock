import 'dart:math';

import 'package:flutter/material.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact'),
      ),
      body: ContactDetails(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.edit_outlined,
        ),
      ),
    );
  }
}

class ContactDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 220,
          //width: 200,
          child: FractionallySizedBox(
            heightFactor: 0.4,
            child: Center(
              child: CircleAvatar(
                backgroundColor:
                    Colors.primaries[Random().nextInt(Colors.primaries.length)],
                child: Text(
                  "A",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40.0,
                  ),
                ),
                radius: 40.0,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
          child: Text(
            'Contact Name',
            style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w500),
          ),
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(children: [
              Icon(Icons.call_outlined),
            ]),
          ],
        )
      ],
    );
  }
}
