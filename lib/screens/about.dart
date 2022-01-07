import 'package:childon/auth/login.dart';
import 'package:childon/auth/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

class AboutMe extends StatefulWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  State<AboutMe> createState() => _AboutMeState();
}

// final List<String> imageList = [
//   "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
//   "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
//   "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
//   "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
//   "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
// ];
class _AboutMeState extends State<AboutMe> {
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
          ),
        ));
  }
}
