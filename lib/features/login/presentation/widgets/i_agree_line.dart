import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';
import 'i_agree_dot.dart';

class IAgreeLine extends StatelessWidget {
  const IAgreeLine({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IAgreeDot(
          color: Color(0xff677294).withOpacity(0.7),
        ),
        SizedBox(width: 11),
        Text(
          'I agree with the Terms of Service & Privacy Policy',
          style: AppStyles.styleRegular14.copyWith(fontSize: 12),
        )
      ],
    );
  }
}
