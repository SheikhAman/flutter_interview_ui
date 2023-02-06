import 'package:flutter/material.dart';
import 'package:ui_test/pages/home_page.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({super.key});

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text('Search Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Record Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Saved Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Settings Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        height: height * .09,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20.0),
            topLeft: Radius.circular(20.0),
          ),
          child: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'images/Home.png',
                    height: 20.0,
                    width: 20.0,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'images/Search.png',
                    height: 20.0,
                    width: 20.0,
                  ),
                  label: 'Search',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'images/Video.png',
                    height: 20.0,
                    width: 20.0,
                  ),
                  label: 'Record',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'images/Save.png',
                    height: 20.0,
                    width: 20.0,
                  ),
                  label: 'Saved',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'images/Save.png',
                    height: 20.0,
                    width: 20.0,
                  ),
                  label: 'Settings',
                ),
              ],
              type: BottomNavigationBarType.fixed,
              currentIndex: _selectedIndex,
              selectedItemColor: Colors.black,
              iconSize: 40,
              onTap: _onItemTapped,
              elevation: 5),
        ),
      ),
    );
  }
}
