import 'package:flutter/material.dart';

import 'Pages/feed.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;


  void _onItemTapped(index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> _pageHandler = [
    new Feed(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 1,
        itemBuilder: (BuildContext context, int index){
          return Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: _pageHandler.elementAt(_selectedIndex)
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 20,),
            title: Text('Feed'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble, size: 20,),
            title: Text('Chat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on, size: 20,),
            title: Text('localisation'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.perm_identity, size: 20,),
            title: Text('profile'),
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.grey[500],
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
