import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';


class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  //Circular Image
  Positioned myImages(String images) {
    return Positioned(
      top: 0.0,
      left: 100.0,
      child: Container(
          width: 160.0,
          height: 160.0,
          decoration: new BoxDecoration(
              shape: BoxShape.circle,
              image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: new NetworkImage(
                      images)
              )
          )
      ),
    );
  }

  _openMap() async {
    const url = 'https://www.google.com/maps/search/?api=1&query=48.8566,2.3522';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _openURL() async {
    const url = 'https://flutter.io';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _linkedinURL(String $profileName) async {
    var url = 'https://linkedin.com/' + $profileName;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _twitterURL(String $profileName) async {
    var url = 'https://twitter.com/' + $profileName;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _githubURL(String $profileName) async {
    var url = 'https://github.com/' + $profileName;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  _facebookURL(String $profileName) async {
    var url = 'https://facebook.com/'+ $profileName;
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  //Next Button
  Positioned nextPage() {
    return Positioned(
        bottom: 0.0,
        right: 40.0,
        child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: RaisedButton(
                color: Color(0xffffffff),
                child: new Text(
                  "Next", style: TextStyle(color: Color(0xffed1e79),),
                ),
                onPressed: () {
                  //
                },
                shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
            30.0))
    ),
    ),
    );
  }

  //Back Button
  Positioned backPage() {
    return Positioned(
      bottom: 0.0,
      left: 40.0,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: RaisedButton(
            color: Color(0xffffffff),
            child: new Text(
              "Back", style: TextStyle(color: Color(0xffed1e79),),
            ),
            onPressed: () {

            },
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    30.0))
        ),
      ),
    );
  }

  //Center Widget
  Center profilePage(String profileName, String jobDescription, String location,
      String followerVal, String webLink) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          width: 300.0,
          height: 300.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12.0),
            color: Color(0xffffffff),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 24.0),
                    child: Text(
                      profileName,
                      style: TextStyle(
                          color: new Color(0xff662d8c),
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Text(
                      jobDescription,
                      style: TextStyle(
                          color: new Color(0xffed1e79),
                          fontSize: 18.0
                      ),
                    ),
                  ),

                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            Icon(FontAwesomeIcons.mapMarker,
                                color: Color(0xffed1e79),
                                size: 20.0),
                            SizedBox(width: 10.0),
                            InkWell(
                              child: Text(
                                location,
                                style: TextStyle(
                                    color: new Color(0xff662d8c),
                                    fontSize: 20.0
                                ),
                              ),
                              onTap: () {
                                _openMap();
                              },
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: <Widget>[
                            FavoriteWidget(),
                          ],
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: <Widget>[
                      Icon(FontAwesomeIcons.link,
                          color: Color(0xffed1e79),
                          size: 20.0),
                      SizedBox(width: 10.0),
                      InkWell(
                        child: Text(
                          webLink,
                          style: TextStyle(
                              color: new Color(0xff662d8c),
                              fontSize: 20.0
                          ),
                        ),
                        onTap: () {
                          _openURL();
                        },
                      ),
                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: Material(
                                color: new Color(0xffffffff),
                                shape: CircleBorder(),
                                child: Padding
                                  (
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(FontAwesomeIcons.facebook,
                                      color: Color(0xff125DDE),
                                      size: 35.0),
                                )
                            ),
                            onTap: () {
                              _facebookURL("Baileyr");
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: Material(
                                color: new Color(0xffffffff),
                                shape: CircleBorder(),
                                child: Padding
                                  (
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(FontAwesomeIcons.github,
                                      color: Color(0xff125dde),
                                      size: 35.0),
                                )
                            ),
                            onTap: () {
                              _githubURL("Baileyr");
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: Material(
                                color: new Color(0xffffffff),
                                shape: CircleBorder(),
                                child: Padding
                                  (
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(FontAwesomeIcons.twitter,
                                      color: Color(0xff125DDE),
                                      size: 35.0),
                                )
                            ),
                            onTap: () {
                              _twitterURL("Baileyr");
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: Material(
                                color: new Color(0xffffffff),
                                shape: CircleBorder(),
                                child: Padding
                                  (
                                  padding: EdgeInsets.all(8.0),
                                  child: Icon(FontAwesomeIcons.linkedin,
                                      color: Color(0xff125DDE),
                                      size: 35.0),
                                )
                            ),
                            onTap: () {
                              _linkedinURL("Baileyr");
                            },
                          ),
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Column(
        children: <Widget>[
          _myAppBar3(),
          Expanded(
            flex: 4,
            child: Container(
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                gradient: new LinearGradient(
                  colors: [
                    const Color(0xff662d8c),
                    const Color(0xffed1e79),
                  ],
                  begin: Alignment.centerRight,
                  end: new Alignment(-1.0, -1.0),
                ),
              ),
              child: Stack(
                children: <Widget>[
                  profilePage(
                      "Bailey Romero", "Flutter Developer", "Paris", "200",
                      "www.baileyromero.com"),
                  ProfileImageWidget(),
                  backPage(),
                  nextPage(),
                ],
              ),
            ),
          ),
        ],
      ),


    );
  }

  Widget _myAppBar3() {
    return Container(
      height: 70.0,
      width: MediaQuery
          .of(context)
          .size
          .width,

      decoration: BoxDecoration(
        gradient: new LinearGradient(
          colors: [
            const Color(0xff662d8c),
            const Color(0xffed1e79),
          ],
          begin: Alignment.centerRight,
          end: new Alignment(-1.0, -1.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Container(child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.arrowLeft, color: Colors.white,),
                      onPressed: () {
                        Navigator.pop(context);
                      }),),),
                Expanded(
                  flex: 5,
                  child: Container(child: Text('Profile', style:
                  TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0
                  ),),),),
                Expanded(
                  flex: 1,
                  child: Container(child: IconButton(
                      icon: Icon(
                        FontAwesomeIcons.search, color: Colors.white,
                        size: 20.0,),
                      onPressed: () {
                        //
                      }),),),
              ],)
        ),
      ),
    );
  }
}

class FavoriteWidget extends StatefulWidget {

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorited = true;
  int _favoriteCount = 200;

  void _toggleFavorite() {
    setState(() {
      if (_isFavorited) {
        _favoriteCount -= 1;
        _isFavorited = false;
      } else {
        _favoriteCount += 1;
        _isFavorited = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          child: IconButton(
            icon: (_isFavorited ? Icon(Icons.favorite) : Icon(
                Icons.favorite_border)),
            color: Color(0xffed1e79),
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 35,
          child: Container(
            child: Text('$_favoriteCount', style: TextStyle(
                color: new Color(0xff662d8c),
                fontSize: 18.0
            ),),

          ),
        ),
      ],
    );
  }
}

class ProfileImageWidget extends StatefulWidget {
  @override
  _ProfileImageWidgetState createState() => _ProfileImageWidgetState();
}

class _ProfileImageWidgetState extends State<ProfileImageWidget> {
  var height = 160.0;
  var width = 160.0;
  var shape = BoxShape.circle;

  void _changeShape() {
    setState(() {
      shape = BoxShape.rectangle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 30.0,
      left: 120.0,
      child: GestureDetector(
        onTap: () {
          print('image clicked');
          _changeShape();
        },
        child: Container(
            width: width,
            height: height,
            decoration: new BoxDecoration(
                shape: shape,
                image: new DecorationImage(
                    fit: BoxFit.fill,
                    image: new NetworkImage(
                        "https://images.unsplash.com/photo-1464863979621-258859e62245?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60")
                )
            )
        ),
      ),
    );
  }


}