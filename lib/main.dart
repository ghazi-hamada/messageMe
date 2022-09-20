import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'Screens/Registeration_Screen.dart';
import 'Screens/Signin_Screen.dart';
import 'Screens/Welcome_Screen.dart';
import 'Screens/chat_Scteen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final _auth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: _auth.currentUser != null
          ? chatScreen.screenRoute
          : Welcome_Screen.screenRoute,
      routes: {
        Welcome_Screen.screenRoute: (context) => Welcome_Screen(),
        signInScreen.screenRoute: (context) => signInScreen(),
        RegisterationScreen.screenRoute: (context) => RegisterationScreen(),
        chatScreen.screenRoute: (context) => chatScreen()
      },
    );
  }
}
