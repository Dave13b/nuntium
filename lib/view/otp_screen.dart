import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:nuntium/view/widgets/new_password.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100.0),
            const Text(
              'Verification Code ✅',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
        ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(height: 40.0),
            const Text(
              'You need to enter 4-digit code we send to your email address.',
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.start,
            ),
            const SizedBox(height: 20.0),
            OtpTextField(
                mainAxisAlignment: MainAxisAlignment.center,
                fillColor: Colors.black.withOpacity(0.1),
                filled: true,
                onSubmit: (code) => print("OTP is => $code")),
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: () {

                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return NewPassword();

                },
                ),
                );
              },
                  child:  const Text(
                      'Confirm',
                    ),
                  ),
              ),
          ],
        ),
      ),
    );
  }
}
