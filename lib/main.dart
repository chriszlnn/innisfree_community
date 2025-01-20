import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/responsive/mobile_screen_layout.dart';
import 'package:flutter_application_1/responsive/responsive_layout_screen.dart';
import 'package:flutter_application_1/responsive/web_screen_layout.dart';
import 'package:flutter_application_1/screens/login_screen.dart';
import 'package:flutter_application_1/utils/colors.dart';
import 'package:firebase_core/firebase_core.dart';
//import 'package:http/http.dart' as http;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: 'AIzaSyA3DeWGhmDU4MkxuJ3D-_O4pcfHp4yAcpo',
            appId: '1:1068042806868:web:7a3c8e07e3c4cb01816fc1',
            messagingSenderId: '1068042806868',
            projectId: 'innisfree-community',
            storageBucket: 'innisfree-community.firebasestorage.app'
            ),
          );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      //home: ResponsiveLayout(
      //    mobileScreenLayout: MobileScreenLayout(),
      //    webScreenLayout: WebScreenLayout()),
      home:  LoginScreen(),
    );
  }
}
