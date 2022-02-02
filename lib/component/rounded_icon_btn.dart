import 'package:flutter/material.dart';


class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key? key,
    required this.iconData,
    required this.press,
  }) : super(key: key);

  final IconData iconData;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextButton(
        onPressed: press,
        child: Icon(
          iconData,
          color: Colors.black,
        ),
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.only(left: 10)),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
      ),
    );
  }
}
