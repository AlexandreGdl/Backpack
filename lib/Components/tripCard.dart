import 'dart:math';
import 'package:flutter/material.dart';

class TripCard extends StatefulWidget {

  TripCard(this.userImg, this.postImg);

  final String userImg;
  final String postImg;

  @override
  _TripCardState createState() => _TripCardState(userImg, postImg);
}

class _TripCardState extends State<TripCard> {
  
  _TripCardState(this.userImg, this.postImg);

  final String userImg;
  final String postImg;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20, right: 10),
      child: Row(
        children: <Widget>[
          Container(
            width: 60,
            height: 60,
            child: ClipRRect(
              child: OverflowBox(
                maxWidth: double.infinity, 
                child: new Image(
                  image: new AssetImage(userImg), 
                  fit: BoxFit.cover
                ),
              ), 
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Stack(
              children: <Widget>[
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width/1.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black38,
                        offset: Offset(0, 0),
                        blurRadius: 4.0,
                        spreadRadius: 0.2,
                      )
                    ],
                  ),
                  // Post img
                  child: Container(
                    width: double.infinity,
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      child: OverflowBox(
                        maxWidth: double.infinity, 
                        child: new Image(
                          image: new AssetImage(postImg), 
                          fit: BoxFit.cover
                        ),
                      ), 
                    ),
                  ),
                ),
                Positioned(
                  child: Container(
                    height: 80,
                    width: MediaQuery.of(context).size.width/1.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,// 10% of the width, so there are ten blinds.
                        colors: [Color.fromARGB(0, 0, 0, 0),Color.fromARGB(100, 0, 0, 0)], // whitish to gray
                        tileMode: TileMode.repeated, // repeats the gradient over the canvas
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 10,
                  left: 20,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 30,
                        height: 20,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(40)
                        ),
                        child: Center(
                          child: Text(
                            '4',
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: 'Poppins'
                            ),
                          ),
                        )
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'day trip',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                            fontFamily: 'Poppins'
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 10,
                  child: Text(
                    'Wed, 4 NOV',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white
                    ),
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 10,
                  child: Text(
                    'Wed, 4 NOV',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.white
                    ),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 20,
                  child: Row(
                    children: <Widget>[
                      // Icon
                      Transform.rotate(
                        angle: 90 * pi/180,
                        child: Icon(
                          Icons.airplanemode_active,
                          color: Colors.white,
                        ),
                      ),
                      // Text
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'BALI',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ),
                      // Dot
                      Padding(
                        padding: EdgeInsets.only(left: 5),
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        )
                      ),
                      // Text
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'MEXICO',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                          ),
                        ),
                      ),
                    ],
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