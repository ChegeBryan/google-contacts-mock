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

const List dateLabels = <DropdownMenuItem>[
  DropdownMenuItem(child: Text("Birthday"), value: 1),
  DropdownMenuItem(child: Text("Anniversary"), value: 2),
  DropdownMenuItem(child: Text("Other"), value: 3),
];

const List relationshipLabels = <DropdownMenuItem>[
  DropdownMenuItem(child: Text("Assistant"), value: 1),
  DropdownMenuItem(child: Text("Brother"), value: 2),
  DropdownMenuItem(child: Text("Child"), value: 3),
  DropdownMenuItem(child: Text("Domestic partner"), value: 4),
  DropdownMenuItem(child: Text("Father"), value: 5),
  DropdownMenuItem(child: Text("Manager"), value: 6),
  DropdownMenuItem(child: Text("Mother"), value: 7),
  DropdownMenuItem(child: Text("Parent"), value: 8),
  DropdownMenuItem(child: Text("Reffered by"), value: 9),
  DropdownMenuItem(child: Text("Relative"), value: 10),
  DropdownMenuItem(child: Text("Sister"), value: 11),
  DropdownMenuItem(child: Text("Spounse"), value: 12),
];
