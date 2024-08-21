import 'package:commerce_card/core/colors.dart';
import 'package:commerce_card/features/commercecard/presentation/widgets/mytext.dart';
import 'package:flutter/material.dart';

class Myelevatedbutton extends StatelessWidget {
    Myelevatedbutton({super.key, required this.textbutton, required this.myfun});
  final String textbutton;
  final Function() myfun;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(width: double.infinity,
        child: ElevatedButton(onPressed: myfun, child: Mytext(textdata: textbutton,
         textsize: 30,color:blue ,fontWeight: FontWeight.bold,)),
      ),
    );
  }
}
