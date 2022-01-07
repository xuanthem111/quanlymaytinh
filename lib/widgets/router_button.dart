import 'package:flutter/material.dart';
import 'package:quanlymaytinh/pallete.dart';
import 'package:quanlymaytinh/screens/home_screen.dart';

class RouterButton extends StatelessWidget {
  const RouterButton({
    Key? key,
    required this.buttonName,
  }) : super(key: key);

  final String buttonName;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.08,
      width: size.width * 0.8,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(16), color: kBlue),
      child: FlatButton(
        onPressed: () {},
        child: InkWell(
            onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  ),
          child: Text(
            buttonName,
            style: kBodyText.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}