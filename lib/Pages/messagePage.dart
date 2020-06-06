import 'package:backpack/Components/tripCard.dart';
import 'package:flutter/material.dart';

import 'createTrip.dart';

class MessagingPage extends StatefulWidget {
  @override
  _MessagingPageState createState() => _MessagingPageState();
}

class _MessagingPageState extends State<MessagingPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        AppBar(
          backgroundColor: Colors.transparent,
          bottomOpacity: 0,
          centerTitle: false,
          elevation: 0,
          title: Text('Search',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search by user or places',
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              contentPadding: EdgeInsets.only(bottom: 11, top: 11),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right: 20, top: 45, bottom: 20),
          child: Text(
            'Chats',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right:20, bottom: 30),
          child: Container(
            width: MediaQuery.of(context).size.width - 40,
            child: Row(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  child: ClipRRect(
                    child: OverflowBox(
                      maxWidth: double.infinity, 
                      child: new Image(
                        image: new AssetImage('images/profile_picture.jpg'), 
                        fit: BoxFit.cover
                      ),
                    ), 
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Container(
                    height: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width - 60 - 20 - 15 - 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Sandra',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'
                                ),
                              ),
                              Text(
                                '9:45 AM',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontFamily: 'Poppins'
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 60 - 20 - 15 - 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Hey when are you going?',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'
                                ),
                              ),
                              Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: Color(0xff395AFF),
                                  borderRadius: BorderRadius.all(Radius.circular(50))
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                )
              ],
            ),
          )
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right:20, bottom: 30),
          child: Container(
            width: MediaQuery.of(context).size.width - 40,
            child: Row(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  child: ClipRRect(
                    child: OverflowBox(
                      maxWidth: double.infinity, 
                      child: new Image(
                        image: new AssetImage('images/profile_picture2.jpg'), 
                        fit: BoxFit.cover
                      ),
                    ), 
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Container(
                    height: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width - 60 - 20 - 15 - 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Lisa',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'
                                ),
                              ),
                              Text(
                                '9:45 AM',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontFamily: 'Poppins'
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 60 - 20 - 15 - 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Hey when are you going?',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins'
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                )
              ],
            ),
          )
        ),
        Padding(
          padding: EdgeInsets.only(left: 20, right:20, bottom: 30),
          child: Container(
            width: MediaQuery.of(context).size.width - 40,
            child: Row(
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  child: ClipRRect(
                    child: OverflowBox(
                      maxWidth: double.infinity, 
                      child: new Image(
                        image: new AssetImage('images/profile_picture.jpg'), 
                        fit: BoxFit.cover
                      ),
                    ), 
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 15),
                  child: Container(
                    height: 60,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width - 60 - 20 - 15 - 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Jennifer',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Poppins'
                                ),
                              ),
                              Text(
                                '9:45 AM',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.grey,
                                  fontFamily: 'Poppins'
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 60 - 20 - 15 - 20,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Hey when are you going?',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'Poppins'
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )
                  ),
                )
              ],
            ),
          )
        )
      ],
    );
  }
}


        