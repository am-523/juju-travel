import 'package:flutter/material.dart';
import 'package:juju_travel_apps/theme.dart';
import 'package:juju_travel_apps/views/details_screen.dart';

class PopularItem extends StatelessWidget {
  final String place;
  final String country;
  final String rating;
  final String imageUrl;
  PopularItem({this.place, this.country, this.rating, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailScreen()));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(22),
        child: Container(
            height: 200,
            width: 243,
            color: whiteColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Container(
                    width: 222,
                    height: 127,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        image: AssetImage(
                          '$imageUrl',
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    '$place',
                    style: regularTextStyle.copyWith(fontSize: 14),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        color: blackColor,
                      ),
                      Text(
                        '$country',
                        style: regularTextStyle.copyWith(fontSize: 14),
                      ),
                      Spacer(),
                      Image.asset(
                        'assets/Star.png',
                        width: 20,
                      ),
                      Text(
                        '$rating',
                        style: regularTextStyle.copyWith(fontSize: 14),
                      )
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
