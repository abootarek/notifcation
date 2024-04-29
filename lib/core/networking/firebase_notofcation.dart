import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> handleBackgroundMessage(RemoteMessage message) async {
  print('message recieved : ${message.data}');

  print('message recieved : ${message.notification?.title}');

  print('message recieved : ${message.notification?.body}');
}

class FirebaseNotifications {
  // create instance of firebase messaging
  final firebaseMessaging = FirebaseMessaging.instance;
  // initalize notifcation for this app or device
  Future<void> initNotifcation() async {
    await firebaseMessaging.requestPermission();
    final token = await firebaseMessaging.getToken();
    print('token: $token');
    FirebaseMessaging.onBackgroundMessage(handleBackgroundMessage);
  }
  //handle notification when recieved

  // handle notification when clicked
}
