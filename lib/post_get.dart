import 'package:flutter/material.dart';
import 'package:tugass9/get.dart';
import 'package:tugass9/post.dart';



class PostGet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("POST | GET")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("POST PAGE"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PostPage();
                    },
                  ),
                );
              },
            ),
            RaisedButton(
              child: Text("GET PAGE"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return GetPage();
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
