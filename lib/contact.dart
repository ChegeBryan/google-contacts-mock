import 'dart:math';

import 'package:flutter/material.dart';

import 'presentation/custom_icons_icon.dart';

class Contact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.star_border_outlined),
            onPressed: () {},
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                child: Text('Test'),
              ),
              PopupMenuItem(
                child: Text('Test 2'),
              ),
            ],
          )
        ],
        iconTheme: IconThemeData(
          color: Colors.grey[700],
        ),
        backgroundColor: Colors.grey[50],
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
    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Container(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _buildButtonColumn(color, Icons.call_outlined, "Call"),
          _buildButtonColumn(color, Icons.message_outlined, "Text"),
          _buildButtonColumn(color, Icons.videocam_outlined, "Video"),
        ],
      ),
    );

    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              //width: 200,
              child: FractionallySizedBox(
                heightFactor: 0.4,
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: Colors
                        .primaries[Random().nextInt(Colors.primaries.length)],
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
            buttonSection,
            Divider(),
            ListTile(
              leading: Icon(
                Icons.call_outlined,
                color: color,
              ),
              title: Text('+25400000000'),
              subtitle: Text('Mobile'),
              trailing: Wrap(
                spacing: 24,
                children: [
                  Icon(
                    Icons.videocam_outlined,
                    color: color,
                  ),
                  Icon(
                    Icons.message_outlined,
                    color: color,
                  ),
                ],
              ),
            ),
            Divider(
              indent: 56.0,
            ),
            ListTile(
              leading: Icon(
                Icons.email_outlined,
                color: Colors.grey,
              ),
              title: Text('email@test.com'),
              subtitle: Text('Home · Default'),
            ),
            Divider(
              indent: 56.0,
            ),
            ListTile(
              leading: Icon(
                CustomIcons.whatsapp,
                color: Colors.green,
              ),
              title: Text('Video call +254000000'),
            ),
            Divider(
              indent: 56.0,
            ),
            ListTile(
              leading: Icon(
                CustomIcons.whatsapp,
                color: Colors.green,
              ),
              title: Text('Message call +254000000'),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, bottom: 20.0),
              child: Text('Labels'),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: Icon(
                    Icons.label_outline,
                    color: Colors.grey,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 20.0),
                  child: InputChip(
                    label: Text('Family'),
                    backgroundColor: Colors.transparent,
                    shape: StadiumBorder(
                      side: BorderSide(
                        color: Colors.grey,
                      ),
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text('About Contact Name'),
            ),
            ListTile(
              leading: Icon(
                Icons.calendar_today_outlined,
                color: Colors.grey[700],
              ),
              title: Text("December 2, 2020"),
              subtitle: Text("Anniversary"),
            ),
            ListTile(
              leading: SizedBox(),
              title: Text("December 3, 2010"),
              subtitle: Text("Birthday"),
            ),
            Divider(),
          ],
        ),
      ],
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
}
