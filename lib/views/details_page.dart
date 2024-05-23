import 'package:finals_mobile_palman_lydzustre_4/constants/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/svg.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: kSecondaryColor,
          title: const Text("Details Page"),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: IconButton(
                  onPressed: () {}, icon: Icon(Icons.local_mall_outlined)),
            )
          ],
        ),
        body: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: kLightBackground,
              child: Image.asset('assets/products/airpods.jpg'),
            ),
            Container(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Airpod Max',
                    style: AppTheme.kBigTitle.copyWith(color: kPrimaryColor),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      RatingBar(
                          itemSize: 25,
                          initialRating: 1,
                          minRating: 1,
                          maxRating: 5,
                          allowHalfRating: true,
                          ratingWidget: RatingWidget(
                              empty: Icon(
                                Icons.star_border,
                                color: Colors.amber,
                              ),
                              full: Icon(Icons.star, color: Colors.amber),
                              half: Icon(Icons.star_half_sharp,
                                  color: Colors.amber)),
                          onRatingUpdate: (value) => null),
                      SizedBox(
                        height: 12,
                      ),
                      const Text('125 review'),
                    ],
                  ),
                  SizedBox(height: 12),
                  Text(
                      'SAMPLE BODY TEXT IS RIGHT HEREasdasdasdasdasdasdasdasakldjasdasldkjasdkljahsdlkajhsdlakaslkdjhaslkdjahsdlkjahalkhsdkjahsdadsdasdasd'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\$985'),
                      Container(
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.do_not_disturb_on),
                            ),
                            Text(
                              '1',
                              style: AppTheme.kCardTitle.copyWith(fontSize: 24),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.add_circle_outline),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: kPrimaryColor,
                          minimumSize: Size(double.infinity, 60)),
                      onPressed: () {},
                      child: Text('Add Item')),
                ],
              ),
            )
          ],
        )));
  }
}
