import 'package:ai39d/profile_screen.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  int selectedIndex = 0;

  PageController controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: (index){
          setState(() {
            selectedIndex = index;
            controller.jumpToPage(index);
          });
        },
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
      ),

      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 800,
            width: double.infinity,
            color: Colors.red,
            child: Center(child: Text("1"),),
          ),
          Container(
            height: 800,
            width: double.infinity,
            color: Colors.yellow,
            child: Center(child: Text("1"),),
          ),
          Container(
            height: 800,
            width: double.infinity,
            color: Colors.grey,
            child: Center(child: Text("1"),),
          ),
          ProfileScreen()
        ],

      ),
    );
  }
}
