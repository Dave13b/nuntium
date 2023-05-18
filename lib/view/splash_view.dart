import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nuntium/main.dart';
import 'package:nuntium/utils/global_colors.dart';
import 'package:nuntium/view/login_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  get builder => LoginView();

  @override
  Widget build(BuildContext context) {

    Timer(const Duration(seconds: 5), (){
      debugPrint('5 seconds completed');
      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView() ));
    });
    return  Scaffold(
      backgroundColor: GlobalColors.mainColor,
      body: const Center(
        child: Text(
          'Nuntium',
              style: TextStyle(
                color: Colors.white,
                fontSize: 35,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}