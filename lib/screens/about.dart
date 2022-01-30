import 'package:childon/auth/login.dart';
import 'package:childon/auth/signup.dart';
import 'package:childon/controllers/auth_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'homepage.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

AuthController authController = AuthController();
var auth;

class _AboutMeState extends State<AboutMe> {
  names() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      auth = prefs.getString('authToken');
    });
  }

  remove() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('authToken');
    setState(() {
      auth = null;
    });
  }

  @override
  void initState() {
    super.initState();
    names();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Center(
                child: Image.asset(
                  'assets/logo.png',
                  height: 300,
                ),
              ),

              // GFCarousel(
              //   autoPlay: true,
              //   activeIndicator: Colors.red,
              //   passiveIndicator: Colors.amber,
              //   pagination: true,
              //   items: imageList.map(
              //         (url) {
              //       return Container(
              //         margin: EdgeInsets.all(8.0),
              //         child: ClipRRect(
              //           borderRadius: BorderRadius.all(Radius.circular(5.0)),
              //           child: Image.network(url,
              //               fit: BoxFit.cover, width: 1000.0),
              //         ),
              //       );
              //     },
              //   ).toList(),
              //   onPageChanged: (index) {
              //     setState(() {
              //       index;
              //     });
              //   },
              // ),

              SizedBox(
                height: 100,
              ),
              auth == null
                  ? Column(
                      children: [
                        Text(
                          'Welcome to ChildOn',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Join Us and Add Child-Friendly Places',
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) => SignUpScreen()));
                              },
                              child: Container(
                                height: 55,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'Register',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                              child: Container(
                                height: 55,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    'Login',
                                    style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                    ),
                                    textAlign: TextAlign.justify,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    )
                  : Column(
                      children: [
                        Text(
                          'Welcome to ChildOn',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          height: 50,
                          width: 130,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.teal, // This is what you need!
                              ),
                              onPressed: () {
                                setState(() {
                                  remove().then((value) {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                BottomNavigationBarScreen()));
                                  });
                                });
                              },
                              child: Text(
                                'Log Out',
                                style: TextStyle(fontSize: 20),
                              )),
                        ),
                      ],
                    )
            ],
          ),
        ));
  }
}
