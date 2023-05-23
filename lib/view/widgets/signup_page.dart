import 'package:flutter/material.dart';
import 'package:nuntium/utils/global_colors.dart';
import 'package:nuntium/view/login_view.dart';
import 'package:nuntium/view/widgets/signup_button.dart';
import 'package:nuntium/view/widgets/social_login.dart';
import 'package:nuntium/view/widgets/text_form.dart';
import 'package:nuntium/view/widgets/text_form_global.dart';


void main() {
  runApp(const MaterialApp(
    home:  SignUpPage(),
  ));
}

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State createState() =>  SignUpPageState();

}

class SignUpPageState extends State<SignUpPage> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
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
                        const Text('Welcome to Nuntium 👋',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize:24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Hello, I guess you are new around here. You can '
                                'start using the application after sign up.',
                            style: TextStyle(
                              color: Colors.grey[850],
                              fontSize: 18,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        ////email input++
                        UserTextForm(
                          controller: userController,
                          text: 'Username',
                          obscure: false,
                          textInputType: TextInputType.emailAddress,
                          inputType: TextInputType.text,
                        ),

                        const SizedBox(height: 10),
                        TextFormGlobal(
                          controller: emailController,
                          text: 'Email Address',
                          obscure: false,
                          textInputType: TextInputType.emailAddress,
                          inputType: TextInputType.text,
                        ),

                        const SizedBox(height: 10),

                        ////password input
                        TextForm(controller: passwordController,
                          text: 'Password',
                          textInputType: TextInputType.text,
                          obscure: true,
                          inputType: TextInputType.text,
                        ),
                        const SizedBox(height: 10),

                        TextForm(controller: repeatPasswordController,
                          text: 'Repeat Password',
                          textInputType: TextInputType.text,
                          obscure: true,
                          inputType: TextInputType.text,
                        ),
                        const SignUpButton(),
                        const SizedBox(height: 15),
                        const SocialLogin(),
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
                Text('Already have an account?',
                ),
                InkWell(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return LoginView();
                      },
                      ),
                      );
                    },
                    child: Text(
                      ' Sign In',
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
