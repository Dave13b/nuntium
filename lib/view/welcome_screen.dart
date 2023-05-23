import 'dart:async';
import 'package:flutter/material.dart';
import 'package:nuntium/view/login_view.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  get builder =>  LoginView();

  @override
  Widget build(BuildContext context) {

    Timer(const Duration(seconds: 5), (){
      debugPrint('5 seconds completed');
      Navigator.push(context, MaterialPageRoute(
          builder: (context) =>  LoginView() ));
    });
    return  Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Center(
          child: Column(
            children:  [
              const SizedBox(height: 20),
              Image.asset(
                'assets/images/welcome.png',
                height: 500,
              ),

              const Center(
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Welcome',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
