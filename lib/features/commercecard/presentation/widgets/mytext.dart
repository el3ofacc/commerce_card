import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
    Mytext({super.key, required this.textdata, required this.textsize, this.color, this.fontWeight});
  final String textdata;
  final double textsize;
  final Color? color;
  final FontWeight? fontWeight;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(textdata,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    
      style: TextStyle( 
        fontSize: textsize,
        fontWeight: fontWeight,
        color: color
      ),),
    );
  }
}
