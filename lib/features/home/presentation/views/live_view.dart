import 'package:flutter/material.dart';

import '../widgets/live_view_body.dart';

class LiveView extends StatelessWidget {
  const LiveView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LiveViewBody(),
    );
  }
}
