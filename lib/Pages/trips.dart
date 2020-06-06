import 'package:backpack/Components/tripCard.dart';
import 'package:flutter/material.dart';

import 'createTrip.dart';

class Trips extends StatefulWidget {
  @override
  _TripsState createState() => _TripsState();
}

class _TripsState extends State<Trips> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Positioned(
              child: AppBar(
                backgroundColor: Colors.transparent,
                bottomOpacity: 0,
                centerTitle: false,
                elevation: 0,
                title: Text('Trips',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 40),
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  offset: Offset(0, 4),
                  blurRadius: 10.0,
                  spreadRadius: 0.2,
                )
              ],
              borderRadius: BorderRadius.all(Radius.circular(5))
            ),
            child: Padding(
              padding: EdgeInsets.all(8),
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
            )
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 25),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Requests',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'see all',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Poppins'
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 90.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              TripCard('images/profile_picture.jpg', 'images/post_image.jpeg'),
              TripCard('images/profile_picture2.jpg', 'images/post_image2.jpg'),
              TripCard('images/profile_picture.jpg', 'images/post_image2.jpg'),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 25),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Invites',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),
              ),
              Text(
                'see all',
                style: TextStyle(
                  color: Colors.grey,
                  fontFamily: 'Poppins'
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 90.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              TripCard('images/profile_picture2.jpg', 'images/post_image2.jpg'),
              TripCard('images/profile_picture.jpg', 'images/post_image2.jpg'),
              TripCard('images/profile_picture2.jpg', 'images/post_image.jpeg'),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 50),
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: Container(
                    width: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff395AFF),
                      borderRadius: BorderRadius.all(Radius.circular(50))
                    ),
                    child: Center(
                      child: IconButton(
                        icon: Icon(Icons.add),
                        color: Colors.white,
                        tooltip: 'Increase volume by 10',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => CreateTrip()),
                          );
                        },
                      ),
                    ),
                  ),
                ),
                Text(
                  'Add a trip',
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'Poppins'
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


        