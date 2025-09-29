import 'package:doctor_app/features/login/presentation/widgets/custom_login_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import 'custom_line.dart';

class OtpBottomSheet extends StatelessWidget {
  const OtpBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        children: [
          CustomLine(),
          SizedBox(height: 50),
          CustomLoginHeader(
              crossAxisAlignment: CrossAxisAlignment.start,
              title: 'Forgot password',
              subTitle: """Enter your email for the verification proccesss,
we will send 4 digits code to your email."""),
          SizedBox(height: 20),
          OtpTextField(
            numberOfFields: 4,
            borderColor: Color(0xFF512DA8),
            //set to true to show as box or false to show as dash
            showFieldAsBox: true,
            //runs when a code is typed in
            onCodeChanged: (String code) {
              //handle validation or checks here
            },
            //runs when every textfield is filled
            onSubmit: (String verificationCode) {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text("Verification Code"),
                      content: Text('Code entered is $verificationCode'),
                    );
                  });
            }, // end onSubmit
          ),
        ],
      ),
    );
  }
}
