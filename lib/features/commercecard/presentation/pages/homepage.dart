import 'package:commerce_card/core/colors.dart';
import 'package:commerce_card/core/constants/images.dart';

import 'package:commerce_card/core/functions/notification.dart';
import 'package:commerce_card/core/functions/onwillpop.dart';
import 'package:commerce_card/features/commercecard/presentation/provider.dart/dataprovider.dart';

import 'package:commerce_card/features/commercecard/presentation/widgets/catagorylistview.dart';
import 'package:commerce_card/features/commercecard/presentation/widgets/myfuturebuilder.dart';
import 'package:commerce_card/features/commercecard/presentation/widgets/mytext.dart';
import 'package:commerce_card/features/commercecard/presentation/widgets/mytextform.dart';
import 'package:commerce_card/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController searchcontroller = TextEditingController();
  int newindex = 0;
  @override
  void initState() {
    super.initState();
    sharedPreferences.setString('id', '1');
     
    makenotification();
  }

  @override
  void dispose() {
    super.dispose();
    searchcontroller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => onwillpop(context),
      child: Scaffold(
        backgroundColor: teel,
        drawer: Drawer(),
        appBar: AppBar(
          backgroundColor: teel,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                radius: 30,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image(
                    image: AssetImage(el3of),
                    height: 60,
                    width: 40,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            )
          ],
        ),
        body: ListView(
          children: [
            Consumer<Dataprovider>(
              builder: (context, provider, child) {
                return Mytextform(
                    hinttext: "catagory",
                    icondatafunction: () {
                      provider.changecompany(searchcontroller.text);
                    },
                    iconData: Icons.search,
                    controller: searchcontroller);
              },
            ),
            Row(
              children: [
                Mytext(
                  textdata: "catagory",
                  textsize: 30,
                  color: white,
                  fontWeight: FontWeight.bold,
                )
              ],
            ),
            Catagorylistview(),
            Myfuturebuilder()
          ],
        ),
      ),
    );
  }
}
