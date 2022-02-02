import 'package:flutter/material.dart';
import 'components/body.dart';

class SingInScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.only(left: 75),
          child: Text("Sing In"),
        ),
      ),
      body: Body(),
    );
  }
}
