import 'package:flutter/material.dart';
import 'package:nuntium/utils/global_colors.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: () {
        print('login');
      },
      child: Container(
        alignment: Alignment.center,
        height: 55,
        decoration: BoxDecoration(
            color: GlobalColors.mainColor,
            borderRadius: BorderRadius.circular(6),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 10,
              )
            ]
        ),
        child: const Text(
          'Sign Up',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ) ,
      ),
    );
  }
}
