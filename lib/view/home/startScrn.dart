import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../../utils/colors.dart';
import '../../controller/bottomnav_Cntrl.dart';

class ScreenStart extends StatelessWidget {
  const ScreenStart({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: ColorTheme.white,
        body: Consumer<BottomNavigationProvider>(
          builder: (context, provider, child) {
            return IndexedStack(
              index: provider.currentIndex,
              children: [
                // HomeScreen(),
                // SosScreen(),
                // UserScreen(),
              ],
            );
          },
        ),
        bottomNavigationBar: Consumer<BottomNavigationProvider>(
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
                        activeIcon: Icon(Icons.home_outlined)),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.sos,
                        ),
                        label: "SOS",
                        activeIcon: Icon(Icons.emergency_share)),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.person,
                        ),
                        label: "User",
                        
                        activeIcon: Icon(Icons.person_2_outlined)),
                  ],
                ),
              ),
            );
          },
        ),
      );
  }
}
