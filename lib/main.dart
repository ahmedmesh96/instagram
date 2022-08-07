import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instagram_fluuter/responsive/mobile_screen_layout.dart';
import 'package:instagram_fluuter/responsive/web_screen_layout.dart';
import 'package:instagram_fluuter/screens/login_screen.dart';
import 'package:instagram_fluuter/screens/signup_screen.dart';
import 'package:instagram_fluuter/utils/colors.dart';

import 'responsive/responsive_layout_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyC8EjiJQzXVJVfU8CMgzbqo2iwcvnVWnx8",
            appId: "1:737392623661:web:afaf65e2cb9b47721c38a4",
            messagingSenderId: "737392623661",
            projectId: "instagram-tut-3502d",
            storageBucket:"instagram-tut-3502d.appspot.com", 
            
            ));
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
      home:  SignUpScreen(),
      // ResponsiveLayout(
      //   mobileScreenLayout: MobileScreenLayout(),
      //   webScreenLayout: WebScreenLayout(),
      // ),
    );
  }
}
