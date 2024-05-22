import 'package:finals_mobile_palman_lydzustre_4/constants/themes.dart';
import 'package:flutter/material.dart';

class AdsBannerWidget extends StatelessWidget {
  const AdsBannerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Apple Store',
                  style: AppTheme.kBigTitle,
                ),
                const SizedBox(
                  height: 12,
                ),
                Text('Find the Apple asdjhakdhgaslds',
                    style: AppTheme.kBodyText.copyWith(color: kWhiteColor)),
                const SizedBox(
                  height: 12,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kWhiteColor,
                      foregroundColor: kSecondaryColor,
                    ),
                    onPressed: () {},
                    child: Text('Shop Now!'))
              ],
            ),
          )),
          Image.asset('assets/general/landing.png'),
        ],
      ),
    );
  }
}
