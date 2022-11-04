import 'package:flutter/material.dart';

class CustomBackButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: (){
        Navigator.pop(context);
      },
      color: Colors.white,
      icon: Icon(Icons.arrow_back_ios_new_rounded),
    );
  }

}