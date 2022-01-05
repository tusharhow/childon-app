import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

class Social extends StatefulWidget {
  const Social({Key? key}) : super(key: key);

  @override
  State<Social> createState() => _SocialState();
}
final List<String> imageList = [
  "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
  "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
  "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
  "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",

  "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
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
                height: 70,
              ),
              Center(
                child: Image.asset('assets/childon.png'),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Zorlu Çocuk Tiyatrosu',
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
                        child: Image.network(url,
                            fit: BoxFit.cover, width: 1000.0),
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
                      onTap:(){},
                      child: Container(
                        height: 55,
                        width: 110,
                        color: Colors.white,
                        child: Center(child:  Text(
                          'Features',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.justify,
                        ),),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      height: 20,
                      thickness: 20,
                      endIndent: 3,
                    ),
                    InkWell(
                      onTap:(){},
                      child: Container(
                        height: 55,
                        width: 110,
                        color: Colors.white,
                        child: Center(child:  Text(
                          'Comments',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.justify,
                        ),),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      height: 20,
                      thickness: 20,
                      endIndent: 3,
                    ),
                    InkWell(
                      onTap:(){},
                      child: Container(
                        height: 55,
                        width: 110,
                        color: Colors.white,
                        child: Center(child:  Text(
                          'Working hours',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.justify,
                        ),),
                      ),
                    ),
                    Divider(
                      color: Colors.black,
                      height: 20,
                      thickness: 20,
                      endIndent: 3,
                    ),
                    InkWell(
                      onTap:(){},
                      child: Container(
                        height: 55,
                        width: 110,
                        color: Colors.white,
                        child: Center(child:  Text(
                          'Social media',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.justify,
                        ),),
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
