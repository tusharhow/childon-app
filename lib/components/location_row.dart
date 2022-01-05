import 'package:flutter/material.dart';

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
