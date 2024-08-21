import 'package:cached_network_image/cached_network_image.dart';
import 'package:commerce_card/core/colors.dart';
import 'package:commerce_card/features/commercecard/presentation/widgets/mytext.dart';
import 'package:flutter/material.dart';

class Detailsscreen extends StatelessWidget {
  const Detailsscreen(
      {super.key,
      required this.image,
      required this.title,
      required this.description});
  final String image;
  final String title;
  final String description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: teel,
      appBar: AppBar(backgroundColor:teel,),
      body: ListView(
        children: [
          Container(
            height: 250,

            width: double.infinity,
          
            child:
            Hero(
            tag: 'image_${image}',
             child:
               CachedNetworkImage(fit: BoxFit.cover,
                imageUrl: image,
                errorWidget: (context, url, error) {
                  return Center(
                    child: Icon(Icons.error),
                  );
                },
                placeholder: (context, url) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
                             ),
          ),
          ),
             Mytext(textdata: title, textsize: 30),
             Divider(),
             Mytext(textdata: description,
              textsize: 20)
        ],
      ),
    );
  }
}
 