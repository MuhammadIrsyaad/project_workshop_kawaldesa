import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:project_workshop_kawal_desa/constants/const.dart';
import 'package:project_workshop_kawal_desa/ui/shared/ui_helper.dart';
import 'package:project_workshop_kawal_desa/ui/widgets/text_field_on_changed_widget.dart';
import 'package:project_workshop_kawal_desa/ui/widgets/text_field_widget.dart';
import 'package:project_workshop_kawal_desa/viewmodels/signup_view_model.dart';

class FormPersonalData extends StatefulWidget {
  SignUpViewModel model;
  @override
  _FormPersonalDataState createState() => _FormPersonalDataState();
  FormPersonalData({this.model});
}

class _FormPersonalDataState extends State<FormPersonalData> {
  SignUpViewModel model;
  String valueDrop = "";
  @override
  Widget build(BuildContext context) {
    return LoadingOverlay(
      isLoading: model.busy,
      child: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                verticalSpaceSmall,
                 TextFieldWidget(
                     hintText: 'Name',
                     icon: Icons.person,
                     keyboardType: TextInputType.text,
                     isPassword: false,
                     textFieldController: null,
                     colorIcon: color_main
                 ),
                verticalSpaceSmall,
                TextFieldWidget(
                    hintText: 'Profesi / Jabatan / Status',
                    icon: Icons.panorama_fish_eye,
                    keyboardType: TextInputType.text,
                    isPassword: false,
                    textFieldController: null,
                    colorIcon: color_main
                ),
                verticalSpaceSmall,
                TextFieldWidget(
                    hintText: 'E-mail',
                    icon: Icons.email,
                    keyboardType: TextInputType.emailAddress,
                    isPassword: false,
                    textFieldController: null,
                    colorIcon: color_main
                ),
                verticalSpaceSmall,
                TextFieldWidget(
                    hintText: 'No KTP / NISN / NIP',
                    icon: Icons.format_list_numbered,
                    keyboardType: TextInputType.text,
                    isPassword: false,
                    textFieldController: null,
                    colorIcon: color_main
                ),
                verticalSpaceSmall,
                TextFieldWidget(
                    hintText: 'Password',
                    icon: Icons.lock,
                    keyboardType: TextInputType.emailAddress,
                    isPassword: true,
                    textFieldController: null,
                    colorIcon: color_main
                ),
                verticalSpaceSmall,
                TextFieldWidget(
                    hintText: 'No Handphone',
                    icon: Icons.phone,
                    keyboardType: TextInputType.text,
                    isPassword: false,
                    textFieldController: null,
                    colorIcon: color_main
                ),
                verticalSpaceSmall,
                TextFieldOnChangedWidget(
                    hintText: 'Registrasi',
                    icon: Icons.code,
                    onChanged: (){},
                    keyboardType: keyboardType.text,
                    isPassword: null,
                    colorIcon: color_main
                ),

              ],
            )
          ),
        )
      )
    );
  }
}
