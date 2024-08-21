import 'package:commerce_card/features/commercecard/presentation/widgets/mytext.dart';
import 'package:flutter/material.dart';
Future<bool>  onwillpop(BuildContext context) async {
  return showDialog<bool>(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: Mytext(
              textdata: "you leave the application\n are you sure?",
              textsize: 30),
          actions: [
            TextButton(
                onPressed: () {
   
                    Navigator.of(context).pop(false);
                },
                child: Mytext(textdata: "no", textsize: 30)),
            TextButton(
                onPressed: () {
               
                    Navigator.of(context).pop(true);
                },
                child: Mytext(textdata: "yes", textsize: 30))
          ],
        );
      }).then((onValue)=>onValue??false);
}
