import 'package:flutter/material.dart';
import 'package:project_workshop_kawal_desa/ui/views/login_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      ),
      home:  LoginView()
    );
  }
}
