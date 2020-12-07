import 'package:flutter/material.dart';

const List phoneLabels = <DropdownMenuItem>[
  DropdownMenuItem(child: Text("Mobile"), value: 1),
  DropdownMenuItem(child: Text("Home"), value: 2),
  DropdownMenuItem(child: Text("Work"), value: 3),
];

const List emailLabels = <DropdownMenuItem>[
  DropdownMenuItem(child: Text("Home"), value: 1),
  DropdownMenuItem(child: Text("Work"), value: 2),
  DropdownMenuItem(child: Text("Other"), value: 3),
];

const List addressLabels = emailLabels;

const List imLabels = <DropdownMenuItem>[
  DropdownMenuItem(child: Text("AIM"), value: 1),
  DropdownMenuItem(child: Text("Windows Live"), value: 2),
  DropdownMenuItem(child: Text("Yahoo"), value: 3),
  DropdownMenuItem(child: Text("Skype"), value: 4),
  DropdownMenuItem(child: Text("QQ"), value: 5),
  DropdownMenuItem(child: Text("Hangouts"), value: 6),
  DropdownMenuItem(child: Text("ICQ"), value: 7),
  DropdownMenuItem(child: Text("Jabber"), value: 8),
];
