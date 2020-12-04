import 'dart:math';

import 'package:flutter/material.dart';
import 'package:floating_search_bar/floating_search_bar.dart';
import 'package:google_contacts/contact.dart';
import 'package:google_contacts/presentation/custom_icons_icon.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contacts',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,

        // add roboto as default font family
        fontFamily: 'Raleway',
      ),
      home: FloatingSearchBar.builder(
        itemBuilder: (BuildContext context, _) {
          return ListTile(
            leading: CircleAvatar(
              // use random colors from the primary colors
              backgroundColor:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],
              child: Text(
                "AB",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            title: Text("Contact Name"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Contact()),
              );
            },
          );
        },
        pinned: true,
        padding: EdgeInsets.only(top: 10.0),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 110.0,
                child: DrawerHeader(
                  child: Row(
                    children: [
                      CircleAvatar(
                        maxRadius: 16.0,
                        child: Icon(Icons.person),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Contacts Mock',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.person_outline),
                title: Text("Contacts"),
                trailing: Text("333"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.sync),
                title: Text("Merge & fix"),
                onTap: () {},
              ),
              Divider(),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 8.0),
                child: Text("Labels"),
              ),
              ListTile(
                leading: Icon(Icons.label_outline),
                title: Text("Family"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.add),
                title: Text("Create Label"),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings_outlined),
                title: Text("Settings"),
                onTap: () {},
              ),
              ListTile(
                leading: Icon(Icons.help_outline),
                title: Text("Help and Support"),
                onTap: () {},
              ),
            ],
          ),
        ),
        trailing: CircleAvatar(
          child: Text("CB"),
        ),
        onChanged: (String value) {},
        onTap: () {},
        decoration: InputDecoration.collapsed(
          hintText: "Search...",
        ),
      ),
    );
  }
}
