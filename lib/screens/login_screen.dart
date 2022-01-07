import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quanlymaytinh/pallete.dart';
import 'package:quanlymaytinh/screens/home_screen.dart';
import 'package:quanlymaytinh/screens/register_screen.dart';
import 'package:quanlymaytinh/widgets/password_text_input.dart';
import 'package:quanlymaytinh/widgets/router_button.dart';
import 'package:quanlymaytinh/widgets/text_fiel_input.dart';
import 'package:quanlymaytinh/widgets/widgets.dart';

import 'forgot_pass_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ShaderMask(
          shaderCallback: (rect) => const LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.center,
              colors: [Colors.black, Colors.transparent]).createShader(rect),
          blendMode: BlendMode.darken,
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("login_macbook.jpg"),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(Colors.black54, BlendMode.darken)),
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              const Flexible(
                  child: const Center(
                child: const Text(
                  'Computer My',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                ),
              )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  TextInPutField(
                    icon: FontAwesomeIcons.envelope,
                    hint: 'Email',
                    inputType: TextInputType.emailAddress,
                    inputAction: TextInputAction.next,
                  ),
                  PasswordInputField(
                    icon: FontAwesomeIcons.lock,
                    hint: 'Password',
                    inputAction: TextInputAction.done,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ForgotPass(),
                      ),
                    ),
                    child: Text(
                      'Forgot Password',
                      style: kBodyText,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                 
                   RouterButton(
                      buttonName: 'Login',
                    ),
                  
                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
              Container(
                child: InkWell(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RegisterScreen(),
                    ),
                  ),
                  child: Text(
                    'Create New Account',
                    style: kBodyText,
                  ),
                ),
                decoration: BoxDecoration(
                    border:
                        Border(bottom: BorderSide(width: 1, color: kWhite))),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        )
      ],
    );
  }
}
