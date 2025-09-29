import 'package:flutter/material.dart';

import '../../../../core/widgets/transparent_text_field.dart';

class RegisterTextFieldsSection extends StatelessWidget {
  const RegisterTextFieldsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TransparentTextField(hint: 'Name'),
        SizedBox(height: 18),
        TransparentTextField(hint: 'Email'),
        SizedBox(height: 18),
        TransparentTextField(
          hint: 'Password',
          password: true,
        ),
      ],
    );
  }
}
