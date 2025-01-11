import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Banner-ka debug-ka ha muuqan
      title: 'Flutter Home Page',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Midabka aasaasiga ah
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; // Index-ka Bottom Navigation-ka

  // Bogagga la beddeli karo
  final List<Widget> _pages = [
    Center(child: Text('Welcome', style: TextStyle(fontSize: 24))),
    Center(child: Text('Search Page', style: TextStyle(fontSize: 24))),
    Center(child: Text('Profile Page', style: TextStyle(fontSize: 24))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Business Card App'),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Tusaale: Halkan wax ku samee
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('No new notifications!')),
              );
            },
          ),
        ],
      ),
      body: _pages[_currentIndex], // Waxay muujineysaa bogga hadda la doortay
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // Index-ka hadda
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Bedel index-ka
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Tusaale: Halkan wax ku samee
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('FAB Pressed!')),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
