import 'dart:async';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_application_1/features/notifcation/ui/notifcation_page.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

Future<void> handleBackgroundMessage(RemoteMessage message) async {
  print('message recieved : ${message.data}');

  print('message recieved : ${message.notification?.title}');

  print('message recieved : ${message.notification?.body}');
}

class FirebaseNotifications {
  final androidChannel = const AndroidNotificationChannel(
    'high_importance_channel', // id
    'High Importance Notifications', // title
    description: 'This channel is used for important notifications.', //
    importance: Importance.defaultImportance,
  );

  // create instance of firebase messaging
  final firebaseMessaging = FirebaseMessaging.instance;
  // initalize notifcation for this app or device
  Future<void> initNotifcation() async {
    await firebaseMessaging.requestPermission();
    final token = await firebaseMessaging.getToken();
    print('token: $token');
    initpushNotifications();
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
    handleBacjGroundNotification();
  }

  //handle notification when recieved
  void hanleMessage(RemoteMessage? message) {
    if (message == null) return;
    navigatorKey.currentState!
        .pushNamed(NotificationScreen.routeName, arguments: message);
  }

  Future initpushNotifications() async {
    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  Future handleBacjGroundNotification() async {
    FirebaseMessaging.instance.getInitialMessage().then(hanleMessage);
    FirebaseMessaging.onMessageOpenedApp.listen(hanleMessage);
  }
  // handle notification when background
}
