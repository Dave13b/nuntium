import 'package:flutter/material.dart';
import 'package:nuntium/utils/global_colors.dart';
import 'package:nuntium/view/login_view.dart';
import 'package:nuntium/view/otp_screen.dart';
import 'package:nuntium/view/widgets/button_global.dart';
import 'package:nuntium/view/widgets/forgot_password.dart';
import 'package:nuntium/view/widgets/signup_page.dart';
import 'package:nuntium/view/widgets/social_login.dart';
import 'package:nuntium/view/widgets/text_form.dart';
import 'package:nuntium/view/widgets/text_form_global.dart';

import '../forgot_password_button.dart';

class NewPassword extends StatelessWidget {
  NewPassword({Key? key}) : super(key: key);
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController repeatPasswordController = TextEditingController();




  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                Text('Nuntium',
                  style: TextStyle(
                    color: GlobalColors.mainColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 20),
                    const Text('Create New Password 🔒',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize:24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        'You can create a new password, please '
                            'don\t forget it too.',
                        style: TextStyle(
                          color: Colors.grey[850],
                          fontSize: 18,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    ////password input
                    TextForm(controller: passwordController,
                      text:'New Password', textInputType: TextInputType.text,
                      obscure: true, inputType: TextInputType.text,
                    ),

                    const SizedBox(height: 10),

                    ////repeat password input
                    TextForm(controller: repeatPasswordController,
                      text:'Repeat New Password', textInputType: TextInputType.text,
                      obscure: true, inputType: TextInputType.text,
                    ),

                    const SizedBox(height: 10),

                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children:  [
                          GestureDetector(
                            onTap: (){
                              Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                                return NewPassword();

                              },
                              ),
                              );
                            },

                            child: const Text(
                              'Password Hint?',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const ForgotPasswordButton(),
                    const SizedBox(height: 15),
                    ////const SocialLogin(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 50,
        color: Colors.white,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Didn’t receive an email?',
            ),
            InkWell(
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context){
                    return const OTPScreen();
                  },
                  ),
                  );
                },
                child: Text(
                  ' Send again',
                  style: TextStyle(
                    color: GlobalColors.mainColor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
