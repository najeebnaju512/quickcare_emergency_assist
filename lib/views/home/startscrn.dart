import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quickcare_emergency_assist/utils/colors.dart';

import 'controller/bottomnav_cntrl.dart';
import 'views/user.dart';
import 'views/home.dart';
import 'views/sos.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => BottomNavigationBarProvider(),
      child: ScreenStart(),
    ),
  );
}

class ScreenStart extends StatelessWidget {
  const ScreenStart({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: AppTheme.secondaryColor,
        // extendBody: true,
        body: Consumer<BottomNavigationBarProvider>(
          builder: (context, provider, child) {
            return IndexedStack(
              index: provider.currentIndex,
              children: [
                HomeScreen(),
                SosScreen(),
                UserScreen(),
              ],
            );
          },
        ),
        bottomNavigationBar: Consumer<BottomNavigationBarProvider>(
          builder: (context, provider, child) {
            return Padding(
              padding: const EdgeInsets.all(15.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BottomNavigationBar(
                  onTap: (index) {
                    provider.currentIndex = index;
                    print("tapped object");
                  },
                  currentIndex: provider.currentIndex,
                  elevation: 0,
                  backgroundColor: Colors.blue[200],
                  unselectedItemColor: Colors.grey,
                  selectedItemColor: Colors.red[400],
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  selectedLabelStyle: GoogleFonts.kanit(fontSize: 20),
                  items: [
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                      ),
                      label: "Home",
                      activeIcon: buildBottomNavItem("Home"),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.sos,
                      ),
                      label: "SOS",
                      activeIcon: buildBottomNavItem("SOS"),
                    ),
                    BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person,
                      ),
                      label: "User",
                      activeIcon: buildBottomNavItem("User"),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget buildBottomNavItem(String label) {
    return Column(
      children: [
        Text(
          label,
          style: GoogleFonts.kanit(
            fontSize: 20,
            color: Colors.red[400],
          ),
        ),
        Icon(
          Icons.circle,
          size: 10,
          color: Colors.red[400],
        )
      ],
    );
  }
}
