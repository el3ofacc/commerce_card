import 'package:commerce_card/core/colors.dart';
import 'package:commerce_card/core/constants/onboardinglist.dart';
import 'package:commerce_card/features/commercecard/presentation/provider.dart/dataprovider.dart';
import 'package:commerce_card/features/commercecard/presentation/widgets/onboarding/changeindexbutton.dart';
import 'package:commerce_card/features/commercecard/presentation/widgets/onboarding/mylistgenerate.dart';
import 'package:commerce_card/features/commercecard/presentation/widgets/onboarding/mypageview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Stack(
        children: [
          Mypageview(),
          Mylistgenerate(),
          Changeindexbutton()
        ],
      ),
    );
  }
}
