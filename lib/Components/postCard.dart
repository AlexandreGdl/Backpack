import 'package:flutter/material.dart';

class PostCard extends StatefulWidget {

  PostCard(
    this.profilePicture,
    this.name,
    this.date,
    this.amount,
    this.place,
    this.status,
    this.postPicture
  );

  final String profilePicture;
  final String name;
  final String date;
  final String amount;
  final String place;
  final String status;
  final String postPicture;


  @override
  _PostCardState createState() => _PostCardState(
    this.profilePicture,
    this.name,
    this.date,
    this.amount,
    this.place,
    this.status,
    this.postPicture
  );
}

class _PostCardState extends State<PostCard> {

  _PostCardState(
    this.profilePicture,
    this.name,
    this.date,
    this.amount,
    this.place,
    this.status,
    this.postPicture
  );

  final String profilePicture;
  final String name;
  final String date;
  final String amount;
  final String place;
  final String status;
  final String postPicture;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.only(left: 20,right: 20, top: 20,bottom: 50),
        child: Container(
          width: MediaQuery.of(context).size.width - 40,
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(bottom: 10 ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // name & img & timed
                      children: <Widget>[
                        Row(
                          // name & img
                          children: <Widget>[
                            Container(
                              width: 30,
                              height: 30,
                              child: ClipRRect(
                                child: OverflowBox(
                                  maxWidth: double.infinity, 
                                  child: new Image(
                                    image: new AssetImage(profilePicture), 
                                    fit: BoxFit.cover
                                  ),
                                ), 
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Text(
                                name,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700
                                ),
                              ),
                            )
                          ],
                        ),
                        Text(date),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black38,
                          offset: Offset(0, 4),
                          blurRadius: 10.0,
                          spreadRadius: 0.2,
                        )
                      ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Stack(
                          children: <Widget>[
                            // img 
                            Container(
                              width: double.infinity,
                              height: 250,
                              child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5),
                                  topRight: Radius.circular(5),
                                ),
                                child: OverflowBox(
                                  maxWidth: double.infinity, 
                                  child: new Image(
                                    image: new AssetImage(postPicture), 
                                    fit: BoxFit.cover
                                  ),
                                ), 
                              ),
                            ),
                            Positioned(
                              left: 20,
                              top: 20,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: 40,
                                    height: 25,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(40)
                                    ),
                                    child: Center(
                                      child: Text(
                                        amount,
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
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
                                        fontSize: 18,
                                        fontFamily: 'Poppins'
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Positioned(
                              top: 20,
                              right: 20,
                              child: Row(
                                children: <Widget>[
                                  Container()
                                ],
                              ),
                            ),
                            Positioned(
                              bottom: 15,
                              left: 20,
                              child: Text(
                                place,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 20,
                              right: 20,
                              child: Text(
                                status,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: Color(0xffffd500),
                                  fontFamily: 'Poppins'
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 125,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(8),
                              bottomRight: Radius.circular(8),
                            )
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  'On a trip to America, looking for someone to join me on this epic journey through American',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 15, bottom: 13),
                                  child: Container(
                                    height: 1,
                                    width: MediaQuery.of(context).size.width - 40,
                                    color: Colors.grey,
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    // Like and share
                                    Row(
                                      children: <Widget>[
                                        Icon(
                                          Icons.favorite_border,
                                          size: 25,
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 5),
                                          child: Icon(
                                            Icons.share,
                                            size: 25,
                                          ),
                                        )
                                      ],
                                    ),
                                    // BookMark
                                    Icon(
                                      Icons.bookmark,
                                      size: 27,
                                      color: Colors.grey[500]
                                    )
                                  ]
                                )
                              ],
                            ),
                          )
                        )
                      ],
                    ),
                  )
                ],
              ),
              Positioned(
                top: 275,
                left: MediaQuery.of(context).size.width / 2 - 60,
                child: Container(
                  width: 80,
                  height: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                    color: Color(0xffffd500)
                  ),
                  child: Center(
                    child: Text('JOIN', style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}