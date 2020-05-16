import 'package:flutter/material.dart';

import 'package:tugass9/user_model.dart';


class GetPage extends StatefulWidget {
  @override
  _GetPageState createState() => _GetPageState();
}

class _GetPageState extends State<GetPage> {
  User user = null;
  final controller1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GET"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            TextField(
              controller: controller1,
              
            ),
            Text((user != null)
                ? user.name + " | " + " | " + user.id
                : "Tidak ada data"),
            RaisedButton(
              child: Text("GET"),
              onPressed: () {
                User.connectToAPI(controller1.text).then((value) {
                  user = value;
                  setState(() {});
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
