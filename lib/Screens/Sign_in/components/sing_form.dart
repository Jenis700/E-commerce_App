import 'package:e_commerce_app/Screens/Forgot_Password/forgot_password.dart';
import 'package:e_commerce_app/Screens/login_sucsses/login_sucsses.dart';
import 'package:e_commerce_app/component/custom_surffix_icon.dart';
import 'package:e_commerce_app/component/default_button.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constatnt.dart';
import '../../../size_config.dart';

class SingInForm extends StatefulWidget {
  @override
  _SingInFormState createState() => _SingInFormState();
}

class _SingInFormState extends State<SingInForm> {
  final _formKey = GlobalKey<FormState>();

  bool remember = false;

  late SharedPreferences user_data;

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String? email;
  String? password;

  @override
  void initState() {
    super.initState();
    initial();
  }

  void initial() async {
    user_data = await SharedPreferences.getInstance();
    setState(() {
      email = user_data.getString("emailKey");
      password = user_data.getString("passwordKey");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildPasswordFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          Row(
            children: [
              Checkbox(
                value: remember,
                activeColor: kPrimaryColor,
                onChanged: (value) {
                  setState(() {
                    remember = value!;
                  });
                },
              ),
              Text("Remember me"),
              Spacer(),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgotPasswordScreen(),
                    ),
                  );
                },
                child: Text(
                  "Forgot Password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                _save();
              }
            },
          ),
        ],
      ),
    );
  }

// email ......................................................................................................................

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      // onSaved: (newValue) => email = newValue,

      validator: (value) =>
          !value!.contains(emailValidatorRegExp) ? kEmailNullError : null,

      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Email",
        hintText: "Enter your email",
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/Mail.svg",
        ),
      ),
    );
  }

// password ......................................................................................................................

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: passwordController,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      validator: (value) {
        if (value!.isEmpty) {
          return kPassNullError;
        } else if (value.length < 8) {
          return kShortPassError;
        }
        !value.contains(passwordValidatorRegExp)
            ? "Please enter Strong password"
            : null;
      },
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Password",
        hintText: "Enter your password",
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }


  void _save() {
    final form = _formKey.currentState;

    if (form!.validate()) {
      form.save();

      performLogin();
    }
  }

  void performLogin() {
    if (email != emailController.text || password != passwordController.text) {
      print("Wrong data");
    } else {
      print("success data");
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginSccessScreen(),
        ),
      );
    }
  }
}
