import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

class Social extends StatefulWidget {
  const Social({Key? key}) : super(key: key);

  @override
  State<Social> createState() => _SocialState();
}

final List<String> imageList = [
  "assets/1.jpg",
  "assets/2.jpg",
  "assets/3.jpg",
  "assets/4.jpg",
];

class _SocialState extends State<Social> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Center(
                child: Image.asset(
                  'assets/logo.png',
                  height: 200,
                ),
              ),
              Text(
                'Snowpark,Torium Shoping Mall',
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(
                height: 15,
              ),
              GFCarousel(
                autoPlay: true,
                activeIndicator: Colors.red,
                passiveIndicator: Colors.amber,
                pagination: true,
                items: imageList.map(
                  (url) {
                    return Container(
                      margin: EdgeInsets.all(8.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                        child:
                            Image.asset(url, fit: BoxFit.cover, width: 1000.0),
                      ),
                    );
                  },
                ).toList(),
                onPageChanged: (index) {
                  setState(() {
                    index;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 55,
                        width: 110,
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            'Features',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      height: 20,
                      thickness: 20,
                      endIndent: 3,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 55,
                        width: 110,
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            'Comments',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      height: 20,
                      thickness: 20,
                      endIndent: 3,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 55,
                        width: 110,
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            'Working hours',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      height: 20,
                      thickness: 20,
                      endIndent: 3,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 55,
                        width: 110,
                        color: Colors.white,
                        child: Center(
                          child: Text(
                            'Social media',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
