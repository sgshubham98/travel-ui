import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(viewportFraction: 0.7);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: SafeArea(
          child: SingleChildScrollView(
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
                      margin: EdgeInsets.only(right: 28.0, top: 16.0, bottom: 12.0),
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
                  width: double.infinity,
                  height: 400.0,
                  child: PageView.builder(
                    controller: controller,
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, itemCount) {
                      return Card(
                        color: Colors.blueGrey[900],
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image(
                                image: AssetImage('images/travel.jpg'),
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 320.0,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Text(
                                'Morocoo',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 24.0,
                                  letterSpacing: 0.2,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.blueGrey[200],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                '56 Activities',
                                style: TextStyle(
                                  color: Colors.white30,
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 5,
                      );
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(left: 28.0, top: 16.0, bottom: 12.0),
                      child: Text(
                        'EXCLUSIVE HOTELS',
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
                  width: double.infinity,
                  height: 400.0,
                  child: PageView.builder(
                    controller: controller,
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (context, itemCount) {
                      return Card(
                        color: Colors.blueGrey[900],
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image(
                                image: AssetImage('images/hotel.jpg'),
                                fit: BoxFit.cover,
                                width: double.infinity,
                                height: 320.0,
                              ),
                            ),
                            SizedBox(
                              height: 8.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:8.0),
                              child: Text(
                                'Rossevelt Hotel NY',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 24.0,
                                  letterSpacing: 0.2,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.blueGrey[200],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Rating : ',
                                style: TextStyle(
                                  color: Colors.white30,
                                  fontFamily: 'Source Sans Pro',
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        elevation: 5,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
