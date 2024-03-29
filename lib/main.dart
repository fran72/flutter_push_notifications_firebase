import 'package:flutter/material.dart';
import 'package:flutter_app_cap16/screens/home_screen.dart';
import 'package:flutter_app_cap16/screens/message_screen.dart';
// import 'package:flutter_app_cap16/screens/screens.dart';
import 'package:flutter_app_cap16/services/push_notifications.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PushNotifications.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  final GlobalKey<ScaffoldMessengerState> messengerKey =
      GlobalKey<ScaffoldMessengerState>();

  @override
  void initState() {
    super.initState();

    PushNotifications.messageStream.listen((title) {
      debugPrint('MY APP MESSAGE......$title');
      navigatorKey.currentState?.pushNamed('message', arguments: title);
      final SnackBar snackbar = SnackBar(content: Text('snack....$title'));
      messengerKey.currentState?.showSnackBar(snackbar);
    });

    // setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        initialRoute: 'home',
        navigatorKey: navigatorKey,
        scaffoldMessengerKey: messengerKey,
        routes: {
          'home': (BuildContext context) => const HomeScreen(),
          'message': (BuildContext context) => const MessageScreen(),
        });
  }
}
