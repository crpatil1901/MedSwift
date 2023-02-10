import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:med_swift/screens/home_screen.dart';
import 'package:med_swift/screens/greeting_screen.dart';
import 'package:med_swift/screens/login_screen.dart';
import 'package:med_swift/screens/register_screen.dart';
import 'package:med_swift/services/auth_service.dart';
import 'package:med_swift/theme/color_scheme.dart';
import 'package:med_swift/theme/textTheme.dart';
import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: lightColorScheme,
        textTheme: medSwiftTextTheme,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: darkColorScheme,
        textTheme: medSwiftTextTheme,
        useMaterial3: true,
      ),
      home: AuthService().currentUserExists ? const HomeScreen() : const RegistrationScreen(),
    );
  }
}
