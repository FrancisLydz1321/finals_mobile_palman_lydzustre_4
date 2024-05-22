import 'package:finals_mobile_palman_lydzustre_4/constants/themes.dart';
import 'package:finals_mobile_palman_lydzustre_4/widgets/ads_banner_widget.dart';
import 'package:finals_mobile_palman_lydzustre_4/widgets/chip_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        title: SvgPicture.asset(
          'assets/general/store_brand.svg',
          color: kWhiteColor,
          width: 180,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
                onPressed: () {}, icon: Icon(Icons.local_mall_outlined)),
          )
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              AdsBannerWidget(),
              SizedBox(
                height: 50,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: const [
                    ChipWidget(
                      chipLabel: 'All',
                    ),
                    ChipWidget(chipLabel: 'Computer'),
                    ChipWidget(chipLabel: 'Printing'),
                    ChipWidget(chipLabel: 'Camera'),
                    ChipWidget(chipLabel: 'Headsets'),
                    ChipWidget(chipLabel: 'Accessories'),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Hot Sales',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See All',
                    style: AppTheme.kSeeAllText,
                  ),
                ],
              ),
              SizedBox(height: 12),
              Container(
                padding: const EdgeInsets.all(4),
                // color: Colors.amber,
                height: 290,
                width: double.infinity,
                child: ListView.builder(
                  padding: const EdgeInsets.all(12),
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                        // color: kWhiteColor,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 6),
                            color: kWhiteColor,
                            blurRadius: 8,
                            spreadRadius: 4,
                          ),
                        ]),
                    margin: const EdgeInsets.all(12),
                    // color: kWhiteColor,
                    width: MediaQuery.of(context).size.width * .5,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            // color: kLightBackground,
                            width: double.infinity,
                            padding: const EdgeInsets.all(12),
                            color: kLightBackground,
                            child: Image.asset('assets/products/airpods.jpg'),
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 14),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Product Name'),
                              const Text('Product Name Description'),
                              Row(
                                children: [
                                  Text('\$854'),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.add_circle),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
