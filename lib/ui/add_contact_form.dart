import 'package:flutter/material.dart';
import 'package:google_contacts/ui/partials/date_picker_mod.dart';

class AddContactFormFields extends StatefulWidget {
  @override
  _AddContactFormFieldsState createState() => _AddContactFormFieldsState();
}

class _AddContactFormFieldsState extends State<AddContactFormFields> {
  // This global key uniquely identifies the Form widget
  // and allows validation of the form.
  final _formKey = GlobalKey<FormState>();
  bool extraFieldsVisible = false;
  bool moreOptionsButtonBVisible = true;

  void showExtraFormFields() {
    setState(() {
      extraFieldsVisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          ListTile(
            title: TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person_outline),
                labelText: "First name",
                border: OutlineInputBorder(),
              ),
            ),
            trailing: Icon(Icons.keyboard_arrow_down),
          ),
          Padding(
            padding: EdgeInsets.only(left: 56.0, right: 56.0, top: 8.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Last name",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 40.0, top: 16.0),
            child: ListTile(
              title: TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.domain),
                  labelText: "Company",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 40.0, top: 16.0),
            child: ListTile(
              title: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  icon: Icon(Icons.call_outlined),
                  labelText: "Phone",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(right: 40.0, top: 16.0),
            child: ListTile(
              title: TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  icon: Icon(Icons.email_outlined),
                  labelText: "Email",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
          ),
          Visibility(
            visible: moreOptionsButtonBVisible,
            child: Padding(
              padding: const EdgeInsets.only(left: 50.0, top: 16.0),
              child: TextButton(
                onPressed: showExtraFormFields,
                child: Text("More options"),
              ),
            ),
          ),
          Visibility(
            visible: extraFieldsVisible,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 40.0, top: 16.0),
                  child: ListTile(
                    title: TextFormField(
                      keyboardType: TextInputType.streetAddress,
                      decoration: InputDecoration(
                        icon: Icon(Icons.place_outlined),
                        labelText: "Address",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 40.0, top: 16.0),
                  child: ListTile(
                    title: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        icon: Icon(Icons.message_outlined),
                        labelText: "IM",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 40.0, top: 16.0),
                  child: ListTile(
                    title: TextFormField(
                      keyboardType: TextInputType.url,
                      decoration: InputDecoration(
                        icon: Icon(Icons.public),
                        labelText: "Website",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 40.0, top: 16.0),
                  child: ListTile(
                    title: MyDatePickerInput(),
                  ),
                ),
                Padding(
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
                ),
                Padding(
                  padding: EdgeInsets.only(right: 40.0, top: 16.0),
                  child: ListTile(
                    title: TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.dialer_sip_outlined),
                        labelText: "SIP",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 40.0, top: 16.0),
                  child: ListTile(
                    title: TextFormField(
                      maxLines: null,
                      decoration: InputDecoration(
                        icon: Icon(Icons.notes),
                        labelText: "Notes",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 40.0, top: 16.0),
                  child: ListTile(
                    title: TextFormField(
                      decoration: InputDecoration(
                        icon: Icon(Icons.label_outline),
                        labelText: "Labels",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
