import 'package:flutter/material.dart';
import 'package:nuntium/view/splash_view.dart';
import 'package:http/http.dart' as http;



void main() => runApp(const App(
));


class  App extends StatelessWidget {
  const App ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}

