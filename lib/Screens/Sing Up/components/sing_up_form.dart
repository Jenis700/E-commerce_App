import 'package:e_commerce_app/Screens/login_sucsses/login_sucsses.dart';
import 'package:e_commerce_app/component/custom_surffix_icon.dart';
import 'package:e_commerce_app/component/default_button.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../constatnt.dart';
import '../../../size_config.dart';

class SingUpForm extends StatefulWidget {
  const SingUpForm({Key? key}) : super(key: key);

  @override
  _SingUpFormState createState() => _SingUpFormState();
}

class _SingUpFormState extends State<SingUpForm> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordControler = TextEditingController();
  TextEditingController conformPasswordControler = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  late SharedPreferences loginSetdata;

  @override
  void initState() {
    super.initState();
    check_if_already_login();
  }

  void check_if_already_login() async {
    loginSetdata = await SharedPreferences.getInstance();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordControler.dispose();
    conformPasswordControler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(30)),
            buildConformPasswordFormField(),
            SizedBox(height: getProportionateScreenHeight(40)),
            DefaultButton(
              text: "Continue",
              press: () {
                if (_formKey.currentState!.validate()) {
                  // _formKey.currentState!.save();
                  performLogin();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LoginSccessScreen(),
                    ),
                  );
                }
              },
            )
          ],
        ),
      ),
    );
  }

  void performLogin() {
    String email = emailController.text;
    String password = passwordControler.text;
    String conformPassword = conformPasswordControler.text;
    loginSetdata.setString("emailKey", email);
    loginSetdata.setString("passwordKey", password);
    loginSetdata.setString("conformPasswordKey", conformPassword);
  }

//Conform Password.........................................................................................

  TextFormField buildConformPasswordFormField() {
    return TextFormField(
      controller: conformPasswordControler,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      validator: (value) {
        if (value!.isEmpty) {
          return kPassNullError;
        } else if (passwordControler.text != value) {
          return kMatchPassError;
        }
        return null;
      },
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: "Confirm Password",
        hintText: "Enter your password",
        suffixIcon: CustomSurffixIcon(
          svgIcon: "assets/icons/Lock.svg",
        ),
      ),
    );
  }

//password.........................................................................................

  TextFormField buildPasswordFormField() {
    return TextFormField(
      controller: passwordControler,
      obscureText: true,
      keyboardType: TextInputType.visiblePassword,
      validator: (value) {
        if (value!.isEmpty) {
          return kPassNullError;
        } else if (value.length < 8) {
          return kShortPassError;
        } else if (passwordValidatorRegExp.hasMatch(value)) {
          return kSrongPassError;
        }
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

//Email.........................................................................................

  TextFormField buildEmailFormField() {
    return TextFormField(
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      // onSaved: (newValue) => email = newValue,

      validator: (value) {
        if (value!.isEmpty) {
          return kEmailNullError;
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          return kInvalidError;
        }
      },
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
}
