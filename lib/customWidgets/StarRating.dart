import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final Color? color;

  StarRating({this.starCount = 5, this.rating = .0, this.color});

  Widget buildStar(BuildContext context, int index) {
    Icon icon;

    if (index >= rating) {
      icon = new Icon(
        Icons.star_border,
        color: Colors.white54,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = new Icon(
        Icons.star_half,
        color: color ?? Colors.yellow.shade600,
      );
    } else {
      icon = new Icon(
        Icons.star,
        color: color ?? Colors.yellow.shade600,
      );
    }

    return new InkResponse(
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Row(children: new List.generate(starCount, (index) => buildStar(context, index)));
  }
}
