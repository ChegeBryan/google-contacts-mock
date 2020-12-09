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

  void nameFieldsVibilityController() {
    setState(() {
      // hide minimal fields
      minimalNameFieldsVibisle = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
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
                  trailing: IconButton(
                    icon: Icon(Icons.keyboard_arrow_down),
                    onPressed: nameFieldsVibilityController,
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
                  trailing: IconButton(
                    icon: Icon(Icons.keyboard_arrow_up),
                    onPressed: () {},
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
