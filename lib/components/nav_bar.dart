import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GNav(
            rippleColor: Colors.white, // tab button ripple color when pressed
            hoverColor: Colors.white, // tab button hover color
            haptic: true, // haptic feedback
            tabBorderRadius: 15,
            tabActiveBorder:
                Border.all(color: Colors.purple, width: 1), // tab button border
            tabBorder:
                Border.all(color: Colors.white, width: 1), // tab button border
            tabShadow: [
              BoxShadow(color: Colors.white.withOpacity(0.5), blurRadius: 8)
            ], // tab button shadow
            curve: Curves.easeOutExpo, // tab animation curves
            duration: const Duration(milliseconds: 300), // tab animation duration
            gap: 8, // the tab button gap between icon and text
            color: Colors.grey[800], // unselected icon color
            activeColor: Colors.purple, // selected icon and text color
            iconSize: 24, // tab button icon size
            tabBackgroundColor:
                Colors.purple.withOpacity(0.1), // selected tab background color
            padding: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 5), // navigation bar padding
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.more,
                text: 'Exersice',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              )
            ]),
      ),
    );
  }
}
