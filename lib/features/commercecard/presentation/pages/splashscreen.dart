 
import 'package:commerce_card/core/functions/navigate.dart';
import 'package:commerce_card/features/commercecard/presentation/pages/onboarding.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3),(){
      navigaterep(context,()=>Onboarding());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image(
                image: AssetImage(
              'images/fci.jpg',
            )),
          )
        ],
      ),
    );
  }
}
