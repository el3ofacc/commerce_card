import 'package:commerce_card/core/colors.dart';
import 'package:commerce_card/core/constants/onboardinglist.dart';
import 'package:commerce_card/core/functions/navigate.dart';
import 'package:commerce_card/features/commercecard/presentation/pages/signup.dart';
import 'package:commerce_card/features/commercecard/presentation/provider.dart/dataprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Changeindexbutton extends StatelessWidget {
  const Changeindexbutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Dataprovider>(
      builder: (context, provider, child) {
        return Positioned(
          top: 650,
          width: 380,
          child: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.black.withOpacity(.4),
              child: InkWell(
                  onTap: () {
                    if (provider.index == onboardinglist.length-1) {
                      navigaterep(context,()=> Signup());
                    }
                    provider.increaseindex();
                  },
                  child: Icon(
                    Icons.arrow_forward,
                    size: 30,
                    color: white,
                  ))),
        );
      },
    );
  }
}
