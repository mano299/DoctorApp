import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:doctor_app/features/favourite_doctors/views/favourite_doctors_view.dart';
import 'package:doctor_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';

class NavigationView extends StatefulWidget {
  const NavigationView({super.key});

  @override
  State<NavigationView> createState() => _NavigationViewState();
}

class _NavigationViewState extends State<NavigationView> {
  int currentIndex = 0;
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
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
      ),
      body: _widgetsBodes[currentIndex],
    );
  }

  final List<Widget> _widgetsBodes = [
    HomeView(),
    FavouriteDoctorsView(),
  ];
}
