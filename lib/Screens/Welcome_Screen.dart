import 'package:flutter/material.dart';
import 'package:massageme_app/Screens/Signin_Screen.dart';
import '../widgets/my_buttons.dart';
import 'Registeration_Screen.dart';

class Welcome_Screen extends StatefulWidget {
  static const String screenRoute = 'welcome_screen';

  const Welcome_Screen({Key? key}) : super(key: key);

  @override
  State<Welcome_Screen> createState() => _Welcome_ScreenState();
}

class _Welcome_ScreenState extends State<Welcome_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    height: 180,
                    child: Image.asset('images/logo.png'),
                  ),
                  Text(
                    'MessageMe',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Color(0Xff2e386b)),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              MyButton(
                color: Colors.yellow[900]!,
                title: "Sign in",
                onPressed: () {
                  Navigator.pushNamed(context, signInScreen.screenRoute);
                },
              ),
              MyButton(
                color: Colors.blue[800]!,
                title: "Register",
                onPressed: () {
                  Navigator.pushNamed(context, RegisterationScreen.screenRoute);
                },
              )
            ]),
      ),
    );
  }
}
