import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quanlymaytinh/model/item_model.dart';
import 'package:quanlymaytinh/widgets/text_fiel_input.dart';

class UpdateScreen extends StatelessWidget {
  final Item item;
  const UpdateScreen({required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Center(
              child: SizedBox(
                height: 120,
                child: Hero(
                  tag: item.title,
                  child: Image.asset(
                    item.imageUrl,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Cập Nhật Sản Phẩm",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              children: [
                Text(
                  "Tên Máy : ",
                  style: TextStyle(fontSize: 20),
                ),
                TextInPutField(
                  icon: FontAwesomeIcons.compactDisc,
                  hint: 'Tên',
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                ),
              ],
            ),
            Row(
              children: [
                Text(
                  "Ram: ",
                  style: TextStyle(fontSize: 20),
                ),
                TextInPutField(
                  icon: FontAwesomeIcons.accusoft,
                  hint: 'Ram',
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                ),
              ],
            ),
              Row(
              children: [
                Text(
                  "Màu: ",
                  style: TextStyle(fontSize: 20),
                ),
                TextInPutField(
                  icon: FontAwesomeIcons.accusoft,
                  hint: 'Màu',
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                ),
                
              ],
            ),
              Row(
              children: [
                Text(
                  "CPU: ",
                  style: TextStyle(fontSize: 20),
                ),
                TextInPutField(
                  icon: FontAwesomeIcons.accusoft,
                  hint: 'CPU',
                  inputType: TextInputType.emailAddress,
                  inputAction: TextInputAction.next,
                ),
              ],
            ),
              ElevatedButton(
                            child: Text("Cập Nhật".toUpperCase(),
                                style: TextStyle(fontSize: 14)),
                            style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.blue),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero,
                                        side: BorderSide(color: Colors.blue)))),
                            onPressed: () =>Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UpdateScreen(item: item,),),),)
          ],
        ),
      ),
    );
  }
}
