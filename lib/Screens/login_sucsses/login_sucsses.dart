import 'package:flutter/material.dart';

import 'Components/body.dart';

class LoginSccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: SizedBox(),
        title: Padding(
          padding: const EdgeInsets.only(left: 50),
          child: Text("Login Success"),
        ),
      ),
      body: Body(),
    );
  }
}


