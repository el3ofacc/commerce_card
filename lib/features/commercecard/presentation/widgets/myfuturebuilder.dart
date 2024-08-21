import 'package:cached_network_image/cached_network_image.dart';
import 'package:commerce_card/core/colors.dart';
 
import 'package:commerce_card/core/functions/navigate.dart';
import 'package:commerce_card/features/commercecard/data/datasources/apiservices.dart';
import 'package:commerce_card/features/commercecard/presentation/pages/detailsscreen.dart';
import 'package:commerce_card/features/commercecard/presentation/provider.dart/dataprovider.dart';
import 'package:commerce_card/features/commercecard/presentation/widgets/mytext.dart';
 
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Myfuturebuilder extends StatelessWidget {
  const Myfuturebuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: Consumer<Dataprovider>(
        builder: (context, provider, child) {
          return FutureBuilder(
              future: Apiservices().fetchdata(provider.company),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot.hasData) {
                  return Padding(
                    padding: const EdgeInsets.all(3.0),
                    child: GridView.builder(
                        itemCount: snapshot.data!.length,
                        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 200, mainAxisExtent: 280),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: InkWell(
                              onTap: () {
                                navigate(
                                    context,
                                    () => Detailsscreen(
                                        image: snapshot.data![index].urlToImage
                                            .toString(),
                                        title: snapshot.data![index].title
                                            .toString(),
                                        description: snapshot
                                            .data![index].description
                                            .toString()));
                              },
                              child: Card(
                                color:teel,// Colors.blue[100],
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Column(
                                    children: [
                                     Hero(
                                      tag: 'image_${snapshot.data![index].urlToImage}',
                                       child:
                                         CachedNetworkImage(
                                            fit: BoxFit.cover,
                                            height: 190,
                                            placeholder: (context, url) {
                                              return Center(
                                                child:
                                                    CircularProgressIndicator(),
                                              );
                                            },
                                            errorWidget: (context, url, error) {
                                              return Icon(Icons.error);
                                            },
                                            imageUrl: snapshot
                                                .data![index].urlToImage
                                                .toString()),
                                      ),
                                      Mytext(
                                          textdata: snapshot.data![index].title
                                              .toString(),
                                              color: white,
                                          textsize: 13)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  );
                } else {
                  return Center(
                    child: Mytext(
                        textdata: 'un expected erorr try again later',
                        textsize: 20),
                  );
                }
              });
        },
      ),
    );
  }
}


 
