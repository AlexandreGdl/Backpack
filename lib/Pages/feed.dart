import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
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
                title: Text('Traveling to?',style: TextStyle(color: Colors.black),),
                actions: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(
                    Icons.search,
                      color: Colors.black,
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
      ],
    );
  }
}