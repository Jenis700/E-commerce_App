import 'package:e_commerce_app/Screens/otp/otp_Screen.dart';
import 'package:e_commerce_app/component/custom_surffix_icon.dart';
import 'package:e_commerce_app/component/default_button.dart';
import 'package:flutter/material.dart';

import '../../../constatnt.dart';
import '../../../size_config.dart';

class CompleteProfileFom extends StatefulWidget {
  const CompleteProfileFom({
    Key? key,
  }) : super(key: key);

  @override
  State<CompleteProfileFom> createState() => _CompleteProfileFomState();
}

class _CompleteProfileFomState extends State<CompleteProfileFom> {
  final _formKey = GlobalKey<FormState>();

  List<String> errors = [];

  String? firstName;
  String? lastName;
  String? phoneNumber;
  String? adress;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildLastNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPhoneNumberFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildAddressFormField(),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OtpScreen(),
                  ),
                );
              }
            },
          ),
        ],
      ),
    );
  }

// Phone number............................................................................................................

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.number,
      onSaved: (newValue) => phoneNumber = newValue,
      validator: (value) {
        if (value!.isEmpty) {
          return kPhoneNumberNullError;
        } else if (value.length < 10 || value.length > 10) {
          return kPhoneNumberWrongError;
        }
        return null;
      },
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Phone Number",
        hintText: "Enter your number",prefixText: "+91 ",
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/Phone.svg",
        ),
      ),
    );
  }

// Address............................................................................................................

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => adress = newValue!,
      validator: (value) {
        if (value!.isEmpty) {
          return kAddressNullError;
        }
        return null;
      },
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Address",
        hintText: "Enter your Address",
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/Location point.svg",
        ),
      ),
    );
  }

//Last Name ............................................................................................................

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) => lastName = newValue!,
      validator: (value) {
        if (value!.isEmpty) {
          return kLastNameNullError;
        }
        return null;
      },
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Last Name",
        hintText: "Enter your last name",
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }

//First Name ............................................................................................................

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) => firstName = newValue!,
      validator: (value) {
        if (value!.isEmpty) {
          return kFirstNameNullError;
        }
        return null;
      },
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "First Name",
        hintText: "Enter your first name",
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/User.svg",
        ),
      ),
    );
  }
}
