import 'package:flutter/material.dart';
import 'package:pixel_parade/categories.dart';
import 'package:pixel_parade/colletions.dart';
import 'package:pixel_parade/home.dart';

class DashboardWidget extends StatefulWidget {
  const DashboardWidget({super.key});

  @override
  State<StatefulWidget> createState() => _DashboardWidget();
}

class _DashboardWidget extends State<DashboardWidget> {
  int _currentIndex = 0;

  var dashoardScreens = [HomeScreen(), MyCollection(), MyCategories()];
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: colorScheme.surface,
        selectedItemColor: Colors.blue[300],
        unselectedItemColor: colorScheme.onSurface.withOpacity(.60),
        selectedLabelStyle: textTheme.bodySmall,
        unselectedLabelStyle: textTheme.bodySmall,
        onTap: (value) {
          // if (value == 0) {
          //   Navigator.of(context).push(
          //       MaterialPageRoute(builder: (context) => const HomeScreen()));
          // } else if (value == 1) {
          //   Navigator.of(context).push(
          //       MaterialPageRoute(builder: (context) => const MyCollection()));
          // }
          // Respond to item press.
          setState(() => _currentIndex = value);
          print(_currentIndex);
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Collections',
            icon: Icon(Icons.shopping_cart_checkout_sharp),
          ),
          BottomNavigationBarItem(
            label: 'Categories',
            icon: Icon(Icons.category_outlined),
          ),
        ],
      ),
      body: Container(
        child: dashoardScreens[_currentIndex],
      ),
    );
  }
}
