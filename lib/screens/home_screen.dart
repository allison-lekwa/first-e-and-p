import 'package:first_e_and_p/screens/home_page.dart';
import 'package:first_e_and_p/screens/calculation_page.dart';
import 'package:first_e_and_p/screens/dashboard_page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController _pageController = PageController(
    initialPage: 0,
  );
  List<Widget> _screen = [MyHomePage(), MyCalcPage(), MyDashBoardPage()];
  int _currentIndex = 0;

  void _onPageChanged(int index,) {
    setState(() {
          _currentIndex = index;
        });
  }

  void _onItemTapped(int selectedIndex) {
    _pageController.jumpToPage(selectedIndex);
  }

  

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey[500],
        currentIndex: _currentIndex,
        onTap: _onItemTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate_rounded),
            label: 'Calculator',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
            
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: _onPageChanged,
        physics: NeverScrollableScrollPhysics(),
        children: _screen,
      ),
    );
  }
}
