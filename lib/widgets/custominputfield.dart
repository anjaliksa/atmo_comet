import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget{
  String hint;
  double radius;
  IconData?  icon;
  CustomInputField({required this.hint, this.icon,required this.radius});
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          filled: true,
          // fillColor: Theme.of(context).secondaryHeaderColor.withOpacity(0.5),
          prefixIcon:Icon(
            icon,
            color: Theme.of(context).primaryColor,
          ),
          hintText: '$hint',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(radius),
            borderSide: BorderSide.none,
          )
      ),
    );
  }

}