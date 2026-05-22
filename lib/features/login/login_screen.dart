import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vegicious/core/utils/vegic_common_widgets.dart';

class LoginScreen extends StatelessWidget{
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          VegicUtils().getVegicLogo()
        ],
      )
    );
  }

}