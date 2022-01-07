import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quanlymaytinh/pallete.dart';
import 'package:quanlymaytinh/screens/login_screen.dart';
import 'package:quanlymaytinh/widgets/password_text_input.dart';
import 'package:quanlymaytinh/widgets/router_button.dart';
import 'package:quanlymaytinh/widgets/text_fiel_input.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: size.width * 0.1,
                ),
                Stack(
                  children: [
                    Center(
                      child: CircleAvatar(
                        radius: size.width * 0.14,
                        backgroundColor: Colors.grey[400]!.withOpacity(0.5),
                        child: Icon(
                          FontAwesomeIcons.user,
                          color: kWhite,
                          size: size.width * 0.1,
                        ),
                      ),
                    ),
                    Positioned(
                      top: size.height * 0.08,
                      left: size.width * 0.56,
                      child: Container(
                        height: size.width * 0.12,
                        width: size.width*0.12,
                        decoration: BoxDecoration(
                          color: kBlue,
                          shape: BoxShape.circle,
                          border: Border.all(color: kWhite,width: 2)
          
                        ),
                        child: Icon(
                          FontAwesomeIcons.arrowUp,
                          color: kWhite,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: size.width * 0.1,
                ),
                Column(
                  children: [
                    TextInPutField(icon: FontAwesomeIcons.user, hint: 'User', inputType: TextInputType.name, inputAction: TextInputAction.next),
                     TextInPutField(icon: FontAwesomeIcons.envelope, hint: 'Email', inputType: TextInputType.emailAddress, inputAction: TextInputAction.next),
                     PasswordInputField(icon: FontAwesomeIcons.lock, hint: 'Password', inputAction: TextInputAction.next ),
                     PasswordInputField(icon: FontAwesomeIcons.lock, hint: 'Confirm Password', inputAction: TextInputAction.none),
                     SizedBox(height: 25,),
                     RouterButton(buttonName: "Register"),
                      SizedBox(height: 25,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account?',style: kBodyText,),
                          InkWell(
                              onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    ),
                            child: Text('Login',style: kBodyText.copyWith(color: kBlue,fontWeight: FontWeight.bold),))

                        ],
                      )

                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
