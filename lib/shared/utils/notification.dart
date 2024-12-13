// import 'package:firebase_core/firebase_core.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';

// class NotificationServices {
//   static FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();

//   static Future<void> _firebaseMessagingBackgroundHandler(
//       RemoteMessage message) async {
//     await Firebase.initializeApp();
//   }

//   static const AndroidNotificationChannel channel = AndroidNotificationChannel(
//     'high_importance_channel',
//     'High Importance Notifications',
//     description: 'This channel is used for important notifications.',
//     importance: Importance.high,
//   );
//   static const iosInitializationSetting = DarwinInitializationSettings();

//   static Future<void> initializenotification() async {
//     FirebaseMessaging messaging = FirebaseMessaging.instance;
//     NotificationSettings settings = await messaging.requestPermission(
//       alert: true,
//       announcement: false,
//       badge: true,
//       carPlay: false,
//       criticalAlert: false,
//       provisional: false,
//       sound: true,
//     );

//     FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
//     await flutterLocalNotificationsPlugin
//         .resolvePlatformSpecificImplementation<
//             AndroidFlutterLocalNotificationsPlugin>()
//         ?.createNotificationChannel(NotificationServices.channel);

//     await FirebaseMessaging.instance
//         .setForegroundNotificationPresentationOptions(
//       alert: true,
//       badge: true,
//       sound: true,
//     );

//     AndroidInitializationSettings initializationSettingsAndroid =
//         const AndroidInitializationSettings('launcher_icon');
//     AndroidInitializationSettings initialzationSettingsAndroid =
//         const AndroidInitializationSettings('@mipmap/launcher_icon');
//     InitializationSettings initializationSettings = InitializationSettings(
//         android: initialzationSettingsAndroid, iOS: iosInitializationSetting);
//     flutterLocalNotificationsPlugin.initialize(initializationSettings);
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       var notification = message.notification;

//       var android = message.notification!.android;
//       if (notification != null && android != null) {
//         flutterLocalNotificationsPlugin.show(
//             notification.hashCode,
//             notification.title,
//             notification.body,
//             NotificationDetails(
//               android: AndroidNotificationDetails(channel.id, channel.name,
//                   channelDescription: channel.description,
//                   playSound: true,
//                   importance: Importance.max,
//                   icon: "@mipmap/ic_launcher",
//                   audioAttributesUsage: AudioAttributesUsage.notification,
//                   visibility: NotificationVisibility.public,
//                   priority: Priority.high),
//             ));
//       }
//     });
//     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
//       RemoteNotification? notification = message.notification;
//       AndroidNotification? android = message.notification?.android;
//       if (notification != null && android != null) {
//         flutterLocalNotificationsPlugin.show(
//             notification.hashCode,
//             notification.title,
//             notification.body,
//             NotificationDetails(
//               android: AndroidNotificationDetails(channel.id, channel.name,
//                   channelDescription: channel.description,
//                   playSound: true,
//                   importance: Importance.max,
//                   icon: "@mipmap/launcher_icon",
//                   visibility: NotificationVisibility.public,
//                   priority: Priority.high),
//             ));
//       }
//     });
//   }

//   static void joinChannel([String channel = 'Users']) {
//     FirebaseMessaging.instance.subscribeToTopic(channel);
//   }

//   static Future<void> leaveChannel([String channel = 'Users']) async {
//     await FirebaseMessaging.instance.unsubscribeFromTopic(channel);
//   }

//   static Future<void> deleteToken() async {
//     await FirebaseMessaging.instance.deleteToken();
//   }

//   static Future<String?> getToken() async {
//     return await FirebaseMessaging.instance.getToken();
//   }
// }
