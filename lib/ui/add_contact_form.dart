import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_contacts/ui/partials/date_picker_mod.dart';

import 'partials/custom_dropdown_form_field.dart';
import 'partials/custom_text_form_fields.dart';

import 'partials/form_input_labels.dart';

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
  bool minimalNameFieldsVibisle = true;
  bool allNameFieldsVisible = false;

  void showExtraFormFields() {
    setState(() {
      moreOptionsButtonBVisible = false;
      extraFieldsVisible = true;
    });
  }

  // toogle visibility of the various names fields
  void nameFieldsVibilityController(
      {@required bool minimalVisible, @required bool allVisible}) {
    setState(() {
      // controll minimal fields visibility
      minimalNameFieldsVibisle = minimalVisible;

      // control all names fields visibility
      allNameFieldsVisible = allVisible;
    });
  }

  Future<void> _imageSourceOptions() async {
    switch (await showDialog(
        context: context,
        builder: (BuildContext context) {
          return SimpleDialog(
            title: const Text('Change Photo'),
            children: <Widget>[
              SimpleDialogOption(
                onPressed: () {},
                child: const Text('Remove photo'),
                padding:
                    const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 24.0),
              ),
              SimpleDialogOption(
                onPressed: () {},
                child: const Text('Take new photo'),
                padding:
                    const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 24.0),
              ),
              SimpleDialogOption(
                onPressed: () {},
                child: const Text('Select new photo'),
                padding:
                    const EdgeInsets.only(top: 16.0, bottom: 16.0, left: 24.0),
              ),
            ],
          );
        })) {
      // Code to run when an option is selected
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 120,
            child: FractionallySizedBox(
              heightFactor: 0.5,
              child: Center(
                child: CircleAvatar(
                  child: IconButton(
                    icon: Icon(Icons.add_a_photo_outlined),
                    onPressed: _imageSourceOptions,
                  ),
                  radius: 40.0,
                ),
              ),
            ),
          ),
          Visibility(
            visible: minimalNameFieldsVibisle,
            child: Column(
              children: [
                ListTile(
                  title: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person_outline),
                      labelText: "First name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  trailing: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 24.0),
                    child: IconButton(
                      icon: Icon(Icons.keyboard_arrow_down),
                      onPressed: () {
                        nameFieldsVibilityController(
                            minimalVisible: false, allVisible: true);
                      },
                    ),
                  ),
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
              ],
            ),
          ),
          Visibility(
            visible: allNameFieldsVisible,
            child: Column(
              children: [
                ListTile(
                  title: TextFormField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.person_outline),
                      labelText: "Name prefix",
                      border: OutlineInputBorder(),
                    ),
                  ),
                  trailing: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 24.0),
                    child: IconButton(
                      icon: Icon(Icons.keyboard_arrow_up),
                      onPressed: () {
                        nameFieldsVibilityController(
                            minimalVisible: true, allVisible: false);
                      },
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 56.0, right: 56.0, top: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "First name",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 56.0, right: 56.0, top: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Middle name",
                      border: OutlineInputBorder(),
                    ),
                  ),
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
                  padding: EdgeInsets.only(left: 56.0, right: 56.0, top: 8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Name suffix",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const CustomTextFormField(
            icon: Icons.domain,
            labelText: "Company",
          ),
          const CustomTextFormField(
            icon: Icons.dialer_sip_outlined,
            labelText: "Phone",
            keyboardInputType: TextInputType.phone,
          ),
          CustomDropdownFormField(
            listFor: phoneLabels,
          ),
          const CustomTextFormField(
            icon: Icons.email_outlined,
            labelText: "Email",
            keyboardInputType: TextInputType.emailAddress,
          ),
          CustomDropdownFormField(
            listFor: emailLabels,
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
                const CustomTextFormField(
                  icon: Icons.place_outlined,
                  labelText: "Address",
                  keyboardInputType: TextInputType.streetAddress,
                ),
                CustomDropdownFormField(
                  listFor: addressLabels,
                ),
                const CustomTextFormField(
                  icon: Icons.message_outlined,
                  labelText: "IN",
                  keyboardInputType: TextInputType.emailAddress,
                ),
                CustomDropdownFormField(
                  listFor: imLabels,
                ),
                const CustomTextFormField(
                    icon: Icons.public,
                    labelText: "Website",
                    keyboardInputType: TextInputType.url),
                Padding(
                  padding: EdgeInsets.only(right: 40.0, top: 16.0),
                  child: ListTile(
                    title: MyDatePickerInput(),
                  ),
                ),
                CustomDropdownFormField(
                  listFor: dateLabels,
                ),
                const CustomTextFormField(
                  icon: Icons.group_work_outlined,
                  labelText: "Relationship",
                ),
                CustomDropdownFormField(
                  listFor: relationshipLabels,
                ),
                const CustomTextFormField(
                  icon: Icons.dialer_sip_outlined,
                  labelText: "SIP",
                  keyboardInputType: TextInputType.emailAddress,
                ),
                const CustomTextFormField(
                  icon: Icons.notes,
                  labelText: "Notes",
                  maxLines: null,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
