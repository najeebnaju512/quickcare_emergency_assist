import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:quickcare_emergency_assist/view/home/screens/home.dart';
import 'package:quickcare_emergency_assist/view/home/screens/profile.dart';
import 'package:quickcare_emergency_assist/view/home/screens/sos.dart';
import '../../utils/colors.dart';
import '../../controller/bottomnav_Cntrl.dart';

class ScreenStart extends StatelessWidget {
  const ScreenStart({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        //backgroundColor: Colors.red[100],
        body: Consumer<BottomNavigationProvider>(
          builder: (context, provider, child) {
            return IndexedStack(
              index: provider.currentIndex,
              children: [HomeSceen(), SosScreen(), UserScreen()],
            );
          },
        ),
        bottomNavigationBar: Consumer<BottomNavigationProvider>(
          builder: (context, provider, child) {
            return Padding(
              padding: const EdgeInsets.only(left: 5,right: 5,bottom: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BottomNavigationBar(
                  onTap: (index) {
                    provider.currentIndex = index;
                    print("tapped ${provider.currentIndex}");
                  },
                  
                  type: BottomNavigationBarType.fixed,
                  currentIndex: provider.currentIndex,
                  elevation: 0,
                 backgroundColor: Colors.blue[100],
                  unselectedItemColor: Colors.black54,
                  selectedItemColor: Colors.red[400],
                  showSelectedLabels: false,
                  showUnselectedLabels: false,
                  selectedLabelStyle: GoogleFonts.kanit(fontSize: 20),
                  items: [
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.home_outlined,
                        ),
                        label: "Home",
                        activeIcon: Icon(Icons.home)),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.sos,
                        ),
                        label: "SOS",
                        activeIcon: Icon(Icons.emergency_share)),
                    BottomNavigationBarItem(
                        icon: Icon(
                          Icons.person_2_outlined,
                        ),
                        label: "User",
                        activeIcon: Icon(Icons.person)),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
