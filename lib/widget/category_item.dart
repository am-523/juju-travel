import 'package:flutter/material.dart';
import 'package:juju_travel_apps/theme.dart';

class CategoryItem extends StatelessWidget {
  final String name;
  final String imageUrl;
  CategoryItem({this.name, this.imageUrl});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xffAB90F8),
              Color(0xff774FE2),
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xffA68CEE),
              blurRadius: 11,
              offset: Offset(6, 7), // Shadow position
            ),
          ],
        ),
        height: 89,
        width: 71,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                '$imageUrl',
                width: 40,
              ),
            ),
            Text(
              ' $name',
              style: whiteTextStyle.copyWith(fontSize: 14),
            )
          ],
        ),
      ),
    );
  }
}
