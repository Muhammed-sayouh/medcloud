import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medcloud/helper/import_helper.dart';
import 'package:medcloud/ui/screens/categories/categories_screen.dart';
import 'package:medcloud/ui/screens/home/home_screen.dart';

/// Flutter code sample for [BottomNavigationBar].

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CategoriesScreen(),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          boxShadow: <BoxShadow>[
            BoxShadow(
              color: AppColors.lightGrayColor,
              blurRadius: 10,
              // offset: Offset(0.0, 0.75)
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.white,
            selectedLabelStyle:
                getMediumStyle(color: AppColors.mediumGrayColor, fontSize: 10),
            selectedFontSize: 10,
            iconSize: 20,
            unselectedFontSize: 10,
            unselectedItemColor: AppColors.mediumGrayColor,
            unselectedLabelStyle:
                getMediumStyle(color: AppColors.mediumGrayColor, fontSize: 10),
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: const Icon(Icons.home),
                label: Constants.home,
              ),
              BottomNavigationBarItem(
                icon: const Icon(CupertinoIcons.square_grid_2x2_fill),
                label: Constants.category,
              ),
              BottomNavigationBarItem(
                icon: const Icon(CupertinoIcons.shopping_cart),
                label: Constants.cart,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.favorite),
                label: Constants.wishlist,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.shopping_cart),
                label: Constants.profile,
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.amber[800],
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}
