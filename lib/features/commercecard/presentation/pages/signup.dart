import 'package:commerce_card/core/colors.dart';
import 'package:commerce_card/core/constants/images.dart';
import 'package:commerce_card/core/functions/navigate.dart';
import 'package:commerce_card/features/commercecard/presentation/pages/signin.dart';
import 'package:commerce_card/features/commercecard/presentation/widgets/myelevatedbutton.dart';
import 'package:commerce_card/features/commercecard/presentation/widgets/mytext.dart';
import 'package:commerce_card/features/commercecard/presentation/widgets/mytextform.dart';
import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passwordcontrller = TextEditingController();
  TextEditingController emailcontrller = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  void dispose() {
    super.dispose();
    namecontroller.dispose();
    passwordcontrller.dispose();
    emailcontrller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: Form(
        key: formkey,
        child: ListView(
          children: [
            Center(
              child: Image(
                image: AssetImage(fci),
                height: 200,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: blue,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Mytext(
                          textdata: "username",
                          textsize: 15,
                          color: white,
                        )
                      ],
                    ),
                    Mytextform(
                      hinttext: "username",
                      iconData: Icons.people,
                      controller: namecontroller,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Mytext(
                          textdata: "email",
                          textsize: 15,
                          color: white,
                        )
                      ],
                    ),
                    Mytextform(
                      hinttext: "example@gmail.com",
                      iconData: Icons.email,
                      controller: emailcontrller,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Mytext(
                          textdata: "password",
                          textsize: 15,
                          color: white,
                        )
                      ],
                    ),
                    Mytextform(
                      hinttext: "********",
                      iconData: Icons.visibility,
                      controller: passwordcontrller,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Myelevatedbutton(
                        textbutton: "Sign up",
                        myfun: () {
                        
                          if (formkey.currentState!.validate()) {
                              namecontroller.clear;
                            emailcontrller.clear;
                            passwordcontrller.clear;
                            navigate(context, () => Signin());
                          }
                        }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Mytext(
                          textdata: "already have an acount ?",
                          textsize: 20,
                          color: white,
                        ),
                        InkWell(
                          onTap: () {
                            navigate(context, () => Signin());
                          },
                          child: Mytext(
                            textdata: "sign in",
                            textsize: 25,
                            color: red,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
