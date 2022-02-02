import 'package:e_commerce_app/Screens/Sing%20Up/sing_up.dart';
import 'package:e_commerce_app/component/custom_surffix_icon.dart';
import 'package:e_commerce_app/component/default_button.dart';
import 'package:e_commerce_app/component/no_account_text.dart';
import 'package:e_commerce_app/size_config.dart';
import 'package:flutter/material.dart';

import '../../../constatnt.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.04),
              Text(
                "Forgot Password",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(28),
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Please enter ypur email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.1),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  const ForgotPassForm({Key? key}) : super(key: key);

  @override
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formkey = GlobalKey<FormState>();
  late String email;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formkey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFormField(
              onSaved: (newValue) => email = newValue!,
              keyboardType: TextInputType.emailAddress,
              validator: (value) {
                if (value!.isEmpty) {
                  return kEmailNullError;
                } else if (!value.contains(emailValidatorRegExp)) {
                  return kInvalidError;
                }
                return null;
              },
              decoration: InputDecoration(
                floatingLabelBehavior: FloatingLabelBehavior.always,
                labelText: "Email",
                hintText: "Enter your Email",
                suffixIcon: CustomSurffixIcon(
                  svgIcon: "assets/icons/Mail.svg",
                ),
              ),
            ),
            SizedBox(height: getProportionateScreenHeight(30)),
            SizedBox(height: SizeConfig.screenHeight! * 0.1),
            DefaultButton(
              text: "Continue",
              press: () {
                if (_formkey.currentState!.validate()) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => SingUpScreen()),
                  );
                }
              },
            ),
            SizedBox(height: SizeConfig.screenHeight! * 0.1),
            NoAccountText(),
          ],
        ));
  }
}
