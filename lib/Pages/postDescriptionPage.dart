import 'package:flutter/material.dart';

class PostDescriptionPage extends StatefulWidget {

  PostDescriptionPage(this.amount, this.postPicture);
  final String amount;
  final String postPicture;

  @override
  _PostDescriptionPageState createState() => _PostDescriptionPageState(amount,postPicture);
}

class _PostDescriptionPageState extends State<PostDescriptionPage> {

  _PostDescriptionPageState(this.amount, this.postPicture);
  final String amount;
  final String postPicture;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            postPicture
          ),
          Positioned(
            child: AppBar(
              backgroundColor: Colors.transparent,
              bottomOpacity: 0,
              centerTitle: false,
              elevation: 0,
              title:  Row(
                crossAxisAlignment: CrossAxisAlignment.center,
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
          ),
        ],
      ),
    );
  }
}