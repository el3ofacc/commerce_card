import 'package:commerce_card/core/colors.dart';
import 'package:flutter/material.dart';

class Mytextform extends StatelessWidget {
  Mytextform(
      {super.key,
      required this.hinttext,
      required this.iconData,
      required this.controller, this.icondatafunction});
  final Function()? icondatafunction;
  final String hinttext;
  final IconData iconData;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: (value) {
          if (value!.isEmpty) {
            return ("can't be null");
          }
        },
        style: TextStyle(color: blue),
        controller: controller,
        decoration: InputDecoration(
          filled: true,
          fillColor: white,
            suffixIcon: IconButton(onPressed: icondatafunction, icon: Icon(iconData,color: blue,)),
            hintText: hinttext,
            hintStyle: TextStyle(color: blue),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
            )),
      ),
    );
  }
}
