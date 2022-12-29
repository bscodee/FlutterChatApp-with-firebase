import 'package:flutter/material.dart';
import 'package:message_app/screens/login.dart';
import 'package:message_app/screens/registration_screen.dart';
import 'package:message_app/widgets/my_buttons.dart';

class WelcomeScreen extends StatefulWidget {
  static const initroutes = 'welcome_screen';

  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                children: [
                  Container(
                    height: 180,
                    child: Image.asset('images/logochat.webp'),
                  ),
                  Text(
                    'MessageMe ',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Color.fromARGB(255, 7, 68, 60)),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              mybutton(
                color: Color.fromARGB(255, 28, 145, 129),
                title: 'Sign in',
                onpressed: () {
                  Navigator.pushNamed(context, LoginScreen.initroutes);
                },
              ),
              mybutton(
                color: Color.fromARGB(255, 4, 56, 49),
                title: 'Register',
                onpressed: () {
                  Navigator.pushNamed(context, RegistrationScreen.initroutes);
                },
              ),
            ]),
      ),
    );
  }
}
