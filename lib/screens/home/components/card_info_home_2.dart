import 'package:flutter/material.dart';
import 'package:telkomsel_app/themes.dart';

class CardInfoHome2 extends StatelessWidget {
  const CardInfoHome2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget listCardInfo(String icon, String title, IconData? iconHelp,
        String subtitle, String text) {
      return Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(
              icon,
              width: 36,
            ),
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        title,
                        style: boldText13.copyWith(color: primaryTextColor),
                      ),
                      Icon(
                        iconHelp,
                        size: 19,
                      ),
                      const Spacer(),
                      Text(
                        text,
                        style: regulerText13.copyWith(color: primaryTextColor),
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: primaryTextColor,
                      ),
                    ],
                  ),
                  Text(
                    subtitle,
                    style: regulerText10.copyWith(color: primaryTextColor),
                  ),
                ],
              ),
            ),
          )
        ],
      );
    }

    return Container(
      margin: const EdgeInsets.only(top: 18, left: 16, right: 16),
      padding: const EdgeInsets.only(left: 17, top: 29, right: 17),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          listCardInfo('assets/icons/icon-phone.png', 'Voice', null,
              'You have no quota', 'Not yet purchased'),
          const SizedBox(
            height: 39,
          ),
          listCardInfo('assets/icons/icon-sms.png', 'SMS', null,
              'You have no quota', 'Not yet purchased'),
          const SizedBox(
            height: 39,
          ),
          listCardInfo(
              'assets/icons/icon-wallet.png',
              'Monetary',
              Icons.help_outline_rounded,
              'You have no monetary balance',
              'Not yet purchased'),
        ],
      ),
    );
  }
}
