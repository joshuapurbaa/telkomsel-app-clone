import 'package:flutter/material.dart';
import 'package:telkomsel_app/themes.dart';

class RecomendedCard extends StatelessWidget {
  const RecomendedCard({
    Key? key,
    required this.title,
    required this.time,
    required this.price,
  }) : super(key: key);

  final String title;
  final String time;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 28),
      height: 131,
      width: 284,
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(14),
          ),
          color: whiteColor,
          boxShadow: [
            BoxShadow(
              color: greyColor,
              offset: const Offset(0, 1),
              blurRadius: 1,
            )
          ]),
      child: Stack(
        children: [
          ClipPath(
            clipper: BackgroundClipper(),
            child: Container(
              padding: const EdgeInsets.only(left: 11, top: 2),
              height: 18,
              width: 90,
              decoration: BoxDecoration(
                color: bluePurpleColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(14),
                ),
              ),
              child: Text(
                'Buy it again',
                style: mediumText9.copyWith(
                  color: whiteColor,
                  letterSpacing: 0.2,
                ),
              ),
            ),
          ),
          Positioned(
            top: 27,
            left: 18,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: mediumText12.copyWith(
                    color: primaryTextColor,
                    letterSpacing: 0.3,
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  time,
                  style: mediumText15.copyWith(
                    color: primaryTextColor,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  price,
                  style: boldText14.copyWith(
                    color: redColor,
                  ),
                )
              ],
            ),
          ),
          Positioned(
            right: 7,
            top: 7,
            child: Image.asset(
              'assets/icons/Icon-box-play.png',
              width: 45,
            ),
          )
        ],
      ),
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width - 20, size.height);
    path.quadraticBezierTo(size.width - 10, size.height, size.width, 0);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
