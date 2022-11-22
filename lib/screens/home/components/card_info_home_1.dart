import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:telkomsel_app/themes.dart';

class CardInfoHome extends StatelessWidget {
  const CardInfoHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget circularPercent(double percent) {
      return CircularPercentIndicator(
        radius: 34.0,
        lineWidth: 7.0,
        animation: true,
        percent: percent,
        circularStrokeCap: CircularStrokeCap.round,
        backgroundColor: lightGreyColor,
        progressColor: orangColor,
      );
    }

    Widget infoCardList_2() {
      return Row(
        children: [
          Expanded(
            flex: 1,
            child: circularPercent(0.9),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Multimedia',
                      style: boldText13.copyWith(color: primaryTextColor),
                    ),
                    const Spacer(),
                    Text(
                      '9.2GB ',
                      style: semiBoldText13.copyWith(color: primaryTextColor),
                    ),
                    Text(
                      '/ 10 GB Left',
                      style: mediumText13.copyWith(color: primaryTextColor),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: primaryTextColor,
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/icon-warning.png',
                      width: 13,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      '9.2 GB / 10 GB is expiring tomorrow',
                      style: mediumText10.copyWith(
                          color: brownColor, letterSpacing: 0.2),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      );
    }

    Widget infoCardList_1() {
      return Row(
        children: [
          Expanded(
            flex: 1,
            child: circularPercent(0),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      'Internet',
                      style: boldText13.copyWith(color: primaryTextColor),
                    ),
                    const Spacer(),
                    Text(
                      'Not yet purchased',
                      style: mediumText13.copyWith(color: primaryTextColor),
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: primaryTextColor,
                    )
                  ],
                ),
                Text(
                  'You have no quota',
                  style: regulerText10.copyWith(color: primaryTextColor),
                )
              ],
            ),
          )
        ],
      );
    }

    return Container(
      margin: const EdgeInsets.only(top: 18, left: 16, right: 16),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: greyCardColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 17, top: 27, bottom: 21),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rp 0',
                      style: extraBoldText26.copyWith(color: primaryTextColor),
                    ),
                    Text(
                      'Active until 22 Sep 2021',
                      style: mediumText12.copyWith(color: darkGreyColor),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Container(
                          padding:
                              const EdgeInsets.symmetric(vertical: 7, horizontal: 19),
                          decoration: BoxDecoration(
                            color: redButtonColor,
                            borderRadius: BorderRadius.circular(16.5),
                          ),
                          child: Text(
                            'Buy Package',
                            style: mediumText12.copyWith(color: whiteColor),
                          ),
                        ),
                        const SizedBox(
                          width: 18,
                        ),
                        Text(
                          'Top Up',
                          style: mediumText12.copyWith(color: blueColor),
                        ),
                        const SizedBox(
                          width: 19,
                        ),
                        Text(
                          'Send Gift',
                          style: mediumText12.copyWith(color: blueColor),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 17),
              child: Column(
                children: [
                  infoCardList_1(),
                  const Spacer(),
                  infoCardList_2(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
