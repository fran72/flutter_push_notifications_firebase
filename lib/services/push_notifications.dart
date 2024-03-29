import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_cap16/firebase_options.dart';

class PushNotifications {
  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String? token;
  static RemoteMessage? initialMessage;
  static final StreamController<String> _messageStream = StreamController();
  static Stream<String> get messageStream => _messageStream.stream;

  @pragma('vm:entry-point')
  static Future _backgroundHandler(RemoteMessage message) async {
    debugPrint('_backgroundHandler:........... $message');
    _messageStream.add(message.notification?.title ?? '');
  }

  @pragma('vm:entry-point')
  static Future _onMessageHandler(RemoteMessage message) async {
    debugPrint('_onMessageHandler:........... $message');
    _messageStream.add(message.notification?.title ?? '');
  }

  @pragma('vm:entry-point')
  static Future _onMessageOpenApp(RemoteMessage message) async {
    debugPrint('_onMessageOpenApp:........... $message');
    _messageStream.add(message.data['producto'] ?? '');
  }

  @pragma('vm:entry-point')
  static Future initializeApp() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
    await requestPermissions();
    initialMessage = await FirebaseMessaging.instance.getInitialMessage();
    token = await FirebaseMessaging.instance.getToken();
    debugPrint('token:........... $token');

    FirebaseMessaging.onBackgroundMessage(_backgroundHandler);
    FirebaseMessaging.onMessage.listen(_onMessageHandler);
    FirebaseMessaging.onMessageOpenedApp.listen(_onMessageOpenApp);
  }

  static requestPermissions() async {
    NotificationSettings settings = await messaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true);
    debugPrint('permissions status...... ${settings.authorizationStatus}');
  }

  static closeStreams() {
    _messageStream.close();
  }
}
