import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';

class Explore extends StatefulWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  State<Explore> createState() => _ExploreState();
}



class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.indigo,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                Center(
                  child: Image.asset('assets/childon.png'),
                ),
                SizedBox(
                  height: 40,
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Search your city',
                      filled: true,
                      fillColor: Colors.white,
                      prefixIcon: Icon(Icons.compass_calibration_outlined),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      )),
                ),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {},
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 110,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.compass_calibration_outlined),
                              Text('Filters')
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  height: 450,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        LocationRow(),
                        SizedBox(
                          height: 20,
                        ),
                        LocationRow(),
                        SizedBox(
                          height: 20,
                        ),
                        LocationRow(),
                        SizedBox(
                          height: 20,
                        ),
                        LocationRow(),
                        SizedBox(
                          height: 20,
                        ),
                        LocationRow(),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ));
  }
}

class LocationRow extends StatelessWidget {
  const LocationRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Image(
            image: AssetImage('assets/zorlu.png'),
            height: 55,
          ),
          SizedBox(
            width: 30,
          ),
          Text(
            'Zorlu Çocuk Tiyatrosu\nTurkey Istanbul',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.justify,
          ),
        ],
      ),
    );
  }
}
