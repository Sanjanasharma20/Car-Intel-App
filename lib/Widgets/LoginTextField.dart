import 'package:flutter/material.dart';

class LoginTextField extends StatelessWidget {
  final double _borderRadius = 30;
  final double _shadowIntesity = 10;

  final TextEditingController stateController;
  final String hintText;
  final TextInputType keyboardType;
  final bool obscureText;

  LoginTextField({
    @required this.stateController,
    @required this.hintText,
    @required this.keyboardType,
    this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Material(
        elevation: _shadowIntesity,
        borderRadius: BorderRadius.all(Radius.circular(_borderRadius)),
        child: TextField(
          decoration: InputDecoration(
            hintText: hintText,
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(_borderRadius)),
            ),
          ),
          controller: stateController,
          keyboardType: keyboardType,
          obscureText: obscureText == null ? false : true,
        ),
      ),
    );
  }
}
