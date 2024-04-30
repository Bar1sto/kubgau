import 'package:flutter/material.dart';


class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentPageIndex,
        children: const <Widget>[
          
          // Например:
          // NewsPage(),
          // SchedulePage(),
          // FormsPage(),
          // ProfilePage(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentPageIndex,
        onTap: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.newspaper_outlined,
              color: currentPageIndex == 0 ? Colors.green : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.school_outlined,
              color: currentPageIndex == 1 ? Colors.green : Colors.grey,
            ),
            label: '  ',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.input,
              color: currentPageIndex == 2 ? Colors.green : Colors.grey,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              color: currentPageIndex == 3 ? Colors.green : Colors.grey,
            ),
            label: '',
          ),
        ],
        selectedLabelStyle: const TextStyle(
          color: Colors.green
          ),
      ),
    );
  }
}