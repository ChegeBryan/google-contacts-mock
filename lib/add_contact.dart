import 'package:flutter/material.dart';
import 'ui/add_contact_form.dart';

class AddContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CloseButton(),
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
        actions: [
          TextButton(
            onPressed: () {},
            child: Text("save"),
          ),
          PopupMenuButton(
            itemBuilder: (BuildContext context) => [
              PopupMenuItem(
                child: Text("Help & feedback"),
              ),
            ],
          )
        ],
      ),
      body: AddContactForm(),
    );
  }
}

class AddContactForm extends StatefulWidget {
  @override
  _AddContactFormState createState() => _AddContactFormState();
}

class _AddContactFormState extends State<AddContactForm> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        TopContainer(),
        AddContactFormFields(),
      ],
    );
  }
}

class TopContainer extends StatelessWidget {
  const TopContainer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      color: Colors.grey[300],
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Text("Save to"),
          ),
          Container(
            decoration: ShapeDecoration(
              shape: StadiumBorder(),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(4.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: CircleAvatar(
                    maxRadius: 12.0,
                    child: Text("A"),
                  ),
                ),
                Text("text@email.com"),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.grey[700],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
