import 'package:flutter/material.dart';

class FollowCard extends StatelessWidget {
  const FollowCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://scontent.fdac24-1.fna.fbcdn.net/v/t39.30808-6/262919208_445662436999188_2243977371976064779_n.jpg?_nc_cat=102&ccb=1-5&_nc_sid=174925&_nc_ohc=-Fx97YpCuc8AX83qZtF&_nc_ht=scontent.fdac24-1.fna&oh=00_AT9GLs--gkCX87kSM9mgt_WvNOZO3MfeCrvzeao5_7AwrQ&oe=61DA5D35'),
              radius: 40,
            ),
            SizedBox(
              width: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Tushar',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.justify,
                ),
                Text(
                  'Bursa',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black54,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
            Spacer(),
            Text(
              'Follow',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blue,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
