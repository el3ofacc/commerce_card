import 'package:commerce_card/core/colors.dart';
import 'package:commerce_card/core/constants/onboardinglist.dart';
import 'package:commerce_card/features/commercecard/presentation/provider.dart/dataprovider.dart';
import 'package:commerce_card/features/commercecard/presentation/widgets/mytext.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Catagorylistview extends StatelessWidget {
  const Catagorylistview({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10),
      child: Consumer<Dataprovider>(
        builder: (context, provider, child) {
          return Container(
            //  color: white,
            height: 50,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: catagory.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      provider.changecatagoryindex(index);
                      provider.changecompany(catagory[index]);
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 2.0),
                      child: Container(
                          decoration: BoxDecoration(
                              border: index == provider.catagoryindex
                                  ? Border(
                                      bottom: BorderSide(
                                          color: Colors.black, width: 2))
                                  : null),
                          child: Mytext(
                              color: white,
                              textdata: catagory[index],
                              textsize: 20)),
                    ),
                  );
                }),
          );
        },
      ),
    );
  }
}
