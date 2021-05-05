import 'package:flutter/material.dart';

class tmp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Card(
            color: Colors.teal,
            margin: EdgeInsets.only(right: 7),
            child: ListTile(
              leading: Image.asset(
                'assets/images/video_Image.png',
                fit: BoxFit.fill,
                height: 20,
              ),
              title: Text('Loop name'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text('Description Lorem ipsum fufb haonr s djkdh jaunr'),
                  SizedBox(height: 20),
                  Text(
                    '00:12',
                    textAlign: TextAlign.start,
                  )
                ],
              ),
              minVerticalPadding: 0,
              contentPadding: EdgeInsets.only(right: 48, top: 11, bottom: 11),
            ),
          ),
        ],
      ),
    );
  }
}
