import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 28.0, bottom: 8.0),
                    child: Text(
                      'Discover',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 32.0,
                        fontFamily: 'Montserrat',
                        letterSpacing: 2.0,
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  FloatingActionButton(
                    backgroundColor: Colors.blueGrey[300],
                    elevation: 0,
                    onPressed: () => {},
                    child: Icon(
                      Icons.airplanemode_active,
                      size: 32.0,
                      color: Colors.black,
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.blueGrey[300],
                    elevation: 0,
                    onPressed: () => {},
                    child: Icon(
                      Icons.motorcycle,
                      size: 32.0,
                      color: Colors.black,
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.blueGrey[300],
                    elevation: 0,
                    onPressed: () => {},
                    child: Icon(
                      Icons.train,
                      size: 32.0,
                      color: Colors.black,
                    ),
                  ),
                  FloatingActionButton(
                    backgroundColor: Colors.blueGrey[300],
                    elevation: 0,
                    onPressed: () => {},
                    child: Icon(
                      Icons.directions_walk,
                      size: 32.0,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(left: 28.0, top: 16.0),
                    child: Text(
                      'TOP DESTINATIONS',
                      style: TextStyle(
                        color: Colors.white60,
                        fontFamily: 'Source Sans Pro',
                        fontWeight: FontWeight.w800,
                        fontSize: 16.0,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 28.0, top: 16.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          'See all',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.w600,
                            color: Colors.orange[400],
                            letterSpacing: 0.5,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.orange[400],
                          size: 12.0,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 320.0,
                height: 240.0,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  itemBuilder: (context, itemCount) {
                    return Card(
                      margin: EdgeInsets.only(top: 10.0, right: 10.0),
                      semanticContainer: true,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image(
                        image: AssetImage('images/travel.jpg'),
                        fit: BoxFit.scaleDown,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      elevation: 5,
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
