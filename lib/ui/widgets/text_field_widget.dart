import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_workshop_kawal_desa/constants/const.dart';
import 'package:project_workshop_kawal_desa/ui/shared/ui_helper.dart';

class TextFieldWidget extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController textFieldController;
  final TextInputType keyboardType;
  final bool isPassword;
  final Color colorIcon;
  const TextFieldWidget({
    Key? key,
    @required this.hintText,
    @required this.icon,
    @required this.keyboardType,
    @required this.isPassword,
    @required this.textFieldController,
    @required this.colorIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: filedPadding,
      width: screenWidthPercent(context, multipleBy: 0.9),
      height: fieldHeight,
      child: TextField(
        obscureText: isPassword,
        controller: textFieldController,
        keyboardType: KeyboardType,
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xFFF2F2F2),
          focusedBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            borderSide: BorderSide(width: 1, color: color_main)
          )
            border: OutlineInputBorder(),
            prefixIcon: Icon(
              icon,
              color : colorIcon,
            )
          hintText: '$hintText',
        )
      ),
    );
  }
}
