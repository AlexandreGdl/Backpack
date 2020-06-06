import 'package:flutter/material.dart';

class CreateTrip extends StatefulWidget {

  @override
  _CreateTripState createState() => _CreateTripState();
}

class _CreateTripState extends State<CreateTrip> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        bottomOpacity: 0,
        centerTitle: false,
        elevation: 0,
        title: Text('back',
          style: TextStyle(
            color: Colors.black,
            fontFamily: 'Poppins',
            fontSize: 15
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Center(
              child: Text('Let\'s add your trip',
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                  fontSize: 20
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 15, right: 30,top: 40),
            child: Row(
              children: <Widget>[
                Icon(
                  Icons.room,
                  color: Color(0xffffd500),
                  size: 35,
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter a name of a city you\'re traveling to',
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 13, bottom: 11, top: 11, right: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 23, right: 30,top: 10),
            child: Row(
              children: <Widget>[
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Colors.white,
                    border: Border.all(width: 6.0, color: Color(0xff395AFF))
                  ),
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Enter a name of a city you\'re traveling to',
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 20, bottom: 11, top: 11, right: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}