import 'package:awesome_notifications/awesome_notifications.dart';


makenotification() async {
    if (
    !await AwesomeNotifications().isNotificationAllowed()) {
    AwesomeNotifications().requestPermissionToSendNotifications();
  }else{
  AwesomeNotifications().createNotification(
      content: NotificationContent(
          id: 1,
          channelKey: 'channelKey',
          title: 'news application',
          body: 'welcome in our application',
          bigPicture: 'resource://drawable/download'));
}}
