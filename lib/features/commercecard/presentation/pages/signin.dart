import 'package:commerce_card/core/colors.dart';
import 'package:commerce_card/core/constants/images.dart';
import 'package:commerce_card/core/functions/navigate.dart';
import 'package:commerce_card/features/commercecard/presentation/pages/homepage.dart';
import 'package:commerce_card/features/commercecard/presentation/pages/signup.dart';
import 'package:commerce_card/features/commercecard/presentation/widgets/myelevatedbutton.dart';
import 'package:commerce_card/features/commercecard/presentation/widgets/mytext.dart';
import 'package:commerce_card/features/commercecard/presentation/widgets/mytextform.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailcontroller.dispose();
    passwordcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      appBar: AppBar(
        backgroundColor: white,
      ),
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
                  children: [
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
                      controller: emailcontroller,
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
                      hinttext: "******",
                      iconData: Icons.visibility,
                      controller: passwordcontroller,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Myelevatedbutton(
                        textbutton: "Sign in",
                        myfun: () {
                          if (formkey.currentState!.validate()) {
                            navigaterep(context, () => Homepage());
                            emailcontroller.clear();
                            passwordcontroller.clear();
                          
                          }
                        }),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Mytext(
                          textdata: "don't have an account ?",
                          textsize: 15,
                          color: white,
                          fontWeight: FontWeight.bold,
                        ),
                        TextButton(
                            onPressed: () {
                              navigate(context, () => Signup());
                            },
                            child: Mytext(
                              textdata: "sign up",
                              textsize: 25,
                              fontWeight: FontWeight.bold,
                              color: red,
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 15,
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
