import 'package:commerce_card/core/constants/onboardinglist.dart';
import 'package:commerce_card/features/commercecard/presentation/provider.dart/dataprovider.dart';
import 'package:commerce_card/features/commercecard/presentation/widgets/onboarding/detailscontainer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Mypageview extends StatefulWidget {
  const Mypageview({super.key});

  @override
  State<Mypageview> createState() => _MypageviewState();
}

class _MypageviewState extends State<Mypageview> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Consumer<Dataprovider>(
      builder: (context, provider, child) {
        return PageView.builder(
            controller: provider.pageController,
            onPageChanged: (value) {
              provider.changepage(value);
            },
            itemCount: onboardinglist.length,
            itemBuilder: (context, index) {
              return Container(
                height: double.infinity,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: CircleAvatar(
                        radius: size.width / 4,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(120),
                          child: Image(
                            image: AssetImage(onboardinglist[index].image),
                            height: size.height / 4,
                            width: size.width / 2,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Detailscontainer(
                      iconData: Icons.phone,
                      data: onboardinglist[index].phonenumber,
                    ),
                    Detailscontainer(
                        iconData: Icons.email,
                        data: onboardinglist[index].email)
                  ],
                ),
              );
            });
      },
    );
  }
}
