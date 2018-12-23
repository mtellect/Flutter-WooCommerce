import 'package:flutter/material.dart';

class NotFoundWidget extends StatelessWidget {
  IconData notFoundIcon;
  String notFoundTitle;
  String notFoundSubTitle;
  NotFoundWidget(
      {this.notFoundIcon, this.notFoundTitle, this.notFoundSubTitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(30.0),
      //height: MediaQuery.of(context).size.height - 50,
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(
              notFoundIcon,
              color: Colors.grey,
              size: 50.0,
            ),
            new SizedBox(
              height: 10.0,
            ),
            new Text(
              notFoundTitle,
              style: new TextStyle(
                  color: Colors.black,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700),
            ),
            new SizedBox(
              height: 10.0,
            ),
            new Text(
              notFoundSubTitle,
              style: new TextStyle(fontSize: 14.0, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
