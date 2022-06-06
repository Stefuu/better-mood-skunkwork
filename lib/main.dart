import 'package:flutter/material.dart';
import './router/router.dart' as go_router;

void main() {
  runApp(const BetterMoodApp());
}

class BetterMoodApp extends StatefulWidget {
  const BetterMoodApp({Key? key}) : super(key: key);

  @override
  State<BetterMoodApp> createState() => _BetterMoodAppState();
}

class _BetterMoodAppState extends State<BetterMoodApp> {
  final router = go_router.Router().router;

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Better Mood',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('Better Mood'),
          ),
        ),
        body: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          routeInformationParser: router.routeInformationParser,
          routerDelegate: router.routerDelegate,
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
              backgroundColor: Colors.blueGrey,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.hiking),
              label: 'Activities',
              backgroundColor: Colors.blueGrey,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.tips_and_updates),
              label: 'Suggestions',
              backgroundColor: Colors.blueGrey,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blueAccent,
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
