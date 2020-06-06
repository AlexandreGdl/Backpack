import 'package:backpack/Components/postCard.dart';
import 'package:flutter/material.dart';

class Feed extends StatefulWidget {
  @override
  _FeedState createState() => _FeedState();
}

class _FeedState extends State<Feed> {

  var posts = [
    {
      "profilePicture": "images/profile_picture.jpg",
      "name": "Jennifer",
      "date": "2 hours ago",
      "amount": "7",
      "place": "Bali",
      "status": "ON TRIP",
      "postPicture": "images/post_image.jpeg"
    },
    {
      "profilePicture": "images/profile_picture2.jpg",
      "name": "Sia",
      "date": "15th apr",
      "amount": "4",
      "place": "Berlin",
      "status": "ON ROUTE",
      "postPicture": "images/post_image2.jpg"
    },
  ];

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
                title: Text('Traveling to?',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),
                ),
                actions: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 20, bottom: 10),
                    child: Icon(
                    Icons.search,
                      color: Colors.black,
                      size: 30,
                    )
                  ),
                ]
              ),
            )
          ],
        ),
        TextField(
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
        PostCard(
              posts[0]['profilePicture'],
              posts[0]['name'],
              posts[0]['date'],
              posts[0]['amount'],
              posts[0]['place'],
              posts[0]['status'],
              posts[0]['postPicture'],
        ),
        PostCard(
              posts[1]['profilePicture'],
              posts[1]['name'],
              posts[1]['date'],
              posts[1]['amount'],
              posts[1]['place'],
              posts[1]['status'],
              posts[1]['postPicture'],
        ),
      ],
    );
  }
}