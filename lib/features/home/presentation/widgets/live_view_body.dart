import 'package:doctor_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';

import 'live_chat_header.dart';

class LiveViewBody extends StatelessWidget {
  const LiveViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            Assets.assetsImagesDoctorLiveChat,
            fit: BoxFit.fill,
          ),
          Positioned(
            top: 10,
            left: 0,
            right: 0,
            child: LiveChatHeader(),
          )
        ],
      ),
    );
  }
}
