import 'package:commerce_card/core/colors.dart';
import 'package:commerce_card/features/commercecard/presentation/widgets/mytext.dart';
import 'package:flutter/material.dart';

class Detailscontainer extends StatelessWidget {
   Detailscontainer({super.key, required this.iconData, required this.data, });
  final IconData iconData;
  final String data;
 
  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          height: size.height/10,
          color: white, 
          child: Row(
            children: [Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(iconData,size: 30,),
              
            ),
            SizedBox(width: 5,),
            Mytext(textdata: data, textsize: 18,fontWeight: FontWeight.bold,)],
        
          ),
        ),
      ),
    );
  }
}
