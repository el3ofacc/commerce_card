import 'package:commerce_card/core/colors.dart';
import 'package:commerce_card/core/constants/onboardinglist.dart';
import 'package:commerce_card/core/functions/navigate.dart';
import 'package:commerce_card/features/commercecard/presentation/pages/signup.dart';
import 'package:commerce_card/features/commercecard/presentation/provider.dart/dataprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Mylistgenerate extends StatelessWidget {
  const Mylistgenerate({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Dataprovider>(
      builder: (context, provider, child) {
        return Positioned(
            top: 550,
            width: 380,
            child: Container(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(onboardinglist.length, (index) {
                   
               
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: AnimatedContainer(
                          duration: Duration(milliseconds: 30),
                          curve: Curves.easeIn,
                          height: 10,
                          width: index == provider.index ? 20 : 10,
                          color: index == provider.index ? red : white,
                        ),
                      ),
                    );
                  })
                ],
              ),
            ));
      },
    );
  }
}
