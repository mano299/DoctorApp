import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../../../home/presentation/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ConvexAppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        activeColor: Color(0xff0EBE7E),
        color: Color(0xff858EA9),
        curveSize: 0,
        items: [
          TabItem(icon: Icons.home),
          TabItem(icon: Icons.favorite),
          TabItem(icon: Icons.book),
          TabItem(icon: Icons.message_rounded),
        ],
        onTap: (int i) => print('click index=$i'),
      ),
      body: HomeViewBody(),
    );
  }
}
