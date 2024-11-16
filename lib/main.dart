import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_firebase/features/app/splash_screen/splash_screen.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/login_page.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/sign_up_page.dart';

import 'features/user_auth/presentation/pages/home_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  try {
    if (kIsWeb) {
      await Firebase.initializeApp(
        options: const FirebaseOptions(
          apiKey: "AIzaSyCtzX0kCUeN8Hm2M7fqzp1ZVmvy-mmE5jI",
          appId: "1:492567919766:web:a0873aa9d8870f1462d6b7",
          messagingSenderId: "492567919766",
          projectId: "fir-flutter-9f89e",
        ),
      );
    } else {
      await Firebase.initializeApp();
    }
    print("Firebase initialized successfully");
  } catch (e) {
    print("Firebase initialization failed: $e");
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/login': (context) => LoginPage(),
        '/sign-up': (context) => SignUpPage(),
        '/Home': (context) => HomePage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: const SplashScreen(
        child: LoginPage(),
      ),
    );
  }
}
