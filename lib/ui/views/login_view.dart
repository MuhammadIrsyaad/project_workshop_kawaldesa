import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_overlay/loading_overlay.dart';
import 'package:project_workshop_kawal_desa/ui/shared/shared_style.dart';
import 'package:project_workshop_kawal_desa/ui/shared/ui_helper.dart';
import 'package:project_workshop_kawal_desa/viewmodels/login_view_model.dart';
import 'package:stacked/stacked.dart';



class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<LoginViewModel>.reactive(
        viewModelBuilder: () => LoginViewModel(),
        builder: (context, model, child) => Scaffold(
          body: LoadingOverlay(
            isLoading: model.busy,
            child: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        verticalSpaceMedium,
                        Text("Workshop Kawal Desa",style: titleTextStyle,),
                        verticalSpaceSmall,
                        Image.assets('assets/logo.png',
                        width: size.width*0.3,
                        height: size.width*0.3,
                        ),
                        verticalSpaceMedium,
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        );  


  }
}
