import 'package:flutter/material.dart';

import '../widgets/select_time_view_body.dart';

class SelectTimeView extends StatelessWidget {
  const SelectTimeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SelectTimeViewBody(),
    );
  }
}
