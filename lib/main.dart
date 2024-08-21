import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:commerce_card/features/commercecard/presentation/pages/homepage.dart';
import 'package:commerce_card/features/commercecard/presentation/pages/signin.dart';
import 'package:commerce_card/features/commercecard/presentation/pages/signup.dart';
import 'package:commerce_card/features/commercecard/presentation/pages/splashscreen.dart';
import 'package:commerce_card/features/commercecard/presentation/provider.dart/dataprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

late SharedPreferences sharedPreferences;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
sharedPreferences=  await SharedPreferences.getInstance();
  await AwesomeNotifications().initialize('resource://drawable/download', [
    NotificationChannel(
        channelKey: 'channelKey',
        channelName: 'channelName',
        channelDescription: 'channelDescription',
        playSound: true)
  ]);
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    var check = sharedPreferences.getString('id');
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => Dataprovider())],
      child: MaterialApp(
        home: check != null ? Homepage() : Splashscreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
