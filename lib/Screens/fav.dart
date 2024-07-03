import 'dart:async';
import 'package:flutter/material.dart';

class Fav extends StatefulWidget {
  @override
  _MatchFoundScreenState createState() => _MatchFoundScreenState();
}

class _MatchFoundScreenState extends State<Fav> {
  bool _isvisible = false;

  void _showContainer() {
    setState(() {
      _isvisible = true;
    });

    Timer(Duration(seconds: 4), () {
      setState(() {
        _isvisible = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Ensure left alignment
          children: [
            SizedBox(height: 20),
            SizedBox(
              child: Image(image: AssetImage("asset/match_found.jpeg")),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Visibility(
                visible: _isvisible,
                child: Container(
                  height: 60,
                  width: 200,
                  margin: EdgeInsets.all(16),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 124, 49, 175),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Stuck on what to say? Choose from ',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                          color: Color.fromARGB(255, 247, 246, 247),
                        ),
                      ),
                      Text(
                        'these conversation starters!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 10,
                          color: Color.fromARGB(255, 247, 246, 247),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(255, 232, 222, 247),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 11),
                    border: InputBorder.none,
                    hintText: 'Type a message...',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(255, 124, 49, 175),
                    ),
                    prefixIcon: InkWell(
                      onTap: () {
                        _showContainer();
                      },
                      child: Icon(
                        Icons.lightbulb_outline,
                        color: Color.fromARGB(255, 124, 49, 175),
                      ),
                    ),
                    suffixIcon: IconButton(
                      icon: Transform.rotate(
                        angle: 5.8,
                        child: Icon(
                          Icons.send,
                          color: Color.fromARGB(255, 124, 49, 175),
                        ),
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
