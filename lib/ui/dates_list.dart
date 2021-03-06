import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DatesListScreen extends StatefulWidget {
  @override
  _DatesListScreenState createState() => _DatesListScreenState();
}

class _DatesListScreenState extends State<DatesListScreen> {
  @override
  Widget build(BuildContext context) {
    double _paddingLeftAndRight = MediaQuery.of(context).size.width / 9.0;
    double _screenWidth = MediaQuery.of(context).size.width;

    return ListView(
      physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
      itemExtent: 300,
      children: <Widget>[
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text('Today',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontFamily: 'Roboto')),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.only(
                    left: _paddingLeftAndRight, right: _paddingLeftAndRight),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.26,
                child: ListView(
                  physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
                  children: <Widget>[
                    Container(
                      child: Stack(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Container(
                                  width: (_screenWidth -
                                          _paddingLeftAndRight * 2) /
                                      1.5,
                                  child: Text("Eat breakfast",
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      textDirection: TextDirection.ltr,
                                      style: TextStyle(
                                          fontSize: 25.0,
                                          fontWeight: FontWeight.w400,
                                          fontFamily: 'Roboto')),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Container(
                                  width: 150,
                                  child: Text(
                                    "December 25, 8:00-9:00",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 30.0),
                                width: 150,
                                child: Text(
                                  "Note",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                  textDirection: TextDirection.ltr,
                                  style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.grey,
                                      fontFamily: 'Roboto'),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Stack(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Container(
                                  width: (_screenWidth -
                                          _paddingLeftAndRight * 2) /
                                      1.5,
                                  child: Text(
                                    "Read a book",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Container(
                                  width: 150,
                                  child: Text(
                                    "December 25, 9:00-10:00",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Container(
                                  width: 150,
                                  child: Text(
                                    "Note",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Tomorrow',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Roboto'),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.only(
                    left: _paddingLeftAndRight, right: _paddingLeftAndRight),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.26,
                child: ListView(
                  physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
                  children: <Widget>[
                    Container(
                      child: Stack(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Container(
                                  width: (_screenWidth -
                                          _paddingLeftAndRight * 2) /
                                      1.5,
                                  child: Text(
                                    "Do homework",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Container(
                                  width: 150,
                                  child: Text(
                                    "December 26, 8:00-9:00",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Container(
                                  width: 150,
                                  child: Text(
                                    "Note",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Stack(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Container(
                                  width: (_screenWidth -
                                          _paddingLeftAndRight * 2) /
                                      1.5,
                                  child: Text(
                                    "Have lunch",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.w400,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Container(
                                  width: 150,
                                  child: Text(
                                    "December 26, 11:00-12:00",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Container(
                                  width: 150,
                                  child: Text(
                                    "Note",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  'Later',
                  textDirection: TextDirection.ltr,
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontFamily: 'Roboto'),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.only(
                    left: _paddingLeftAndRight, right: _paddingLeftAndRight),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.26,
                child: ListView(
                  physics: AlwaysScrollableScrollPhysics(parent: BouncingScrollPhysics()),
                  children: <Widget>[
                    Container(
                      child: Stack(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Container(
                                  width: (_screenWidth -
                                          _paddingLeftAndRight * 2) /
                                      1.5,
                                  child: Text(
                                    "Do housework",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 25.0,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                width: 150,
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 30.0),
                                  child: Text(
                                    "December 27, 8:00-9:00",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Container(
                                  width: 150,
                                  child: Text(
                                    "Note",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Stack(
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Container(
                                  width: (_screenWidth -
                                          _paddingLeftAndRight * 2) /
                                      1.5,
                                  child: Text(
                                    "Take bath for Pupies",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 25.0,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Container(
                                  width: 150,
                                  child: Text(
                                    "December 27, 10:00-11:00",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 30.0),
                                child: Container(
                                  width: 150,
                                  child: Text(
                                    "Note",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    textDirection: TextDirection.ltr,
                                    style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey,
                                        fontFamily: 'Roboto'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
