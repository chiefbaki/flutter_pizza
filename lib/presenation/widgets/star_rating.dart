import 'package:flutter/material.dart';
import 'package:star_rating/star_rating.dart';

// void _incrementHalfStar() {
//   setState(() {
//     _rating += 0.5;
//     if (_rating > starLength) {
//       _rating = starLength.toDouble();
//     }
//   });
// }

// void _decrementHalfStar() {
//   setState(() {
//     _rating -= 0.5;
//     if (_rating < 0.0) {
//       _rating = 0.0;
//     }
//   });
// }

class StarRatingBtn extends StatefulWidget {
  const StarRatingBtn({super.key});

  @override
  State<StarRatingBtn> createState() => _StarRatingBtnState();
}

int starLength = 5;
double _rating = 0;

class _StarRatingBtnState extends State<StarRatingBtn> {
  @override
  Widget build(BuildContext context) {
    return StarRating(
      mainAxisAlignment: MainAxisAlignment.start,
      length: starLength,
      rating: _rating,
      color: Colors.black,
      between: 2,
      starSize: 20,
      onRaitingTap: (rating) {
        _rating = rating;
        setState(() {});
      },
    );
  }
}
