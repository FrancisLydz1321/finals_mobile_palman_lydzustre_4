import 'package:finals_mobile_palman_lydzustre_4/constants/themes.dart';
import 'package:finals_mobile_palman_lydzustre_4/controllers/product_controller.dart';
import 'package:finals_mobile_palman_lydzustre_4/widgets/ads_banner_widget.dart';
import 'package:finals_mobile_palman_lydzustre_4/widgets/card_widget.dart';
import 'package:finals_mobile_palman_lydzustre_4/widgets/chip_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productNotifierProvider);
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
              const SizedBox(height: 12),
              // const ProductCardWidget(),
              ProductCardWidget(productIndex: 1),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Featured Sales',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'See All',
                    style: AppTheme.kSeeAllText,
                  ),
                ],
              ),

              // MasonryGridView.builder(
              //   physics: const NeverScrollableScrollPhysics(),
              //   itemCount: 4,
              //   shrinkWrap: true,
              // gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) => const SizedBox(height: 250,child: ProductCardWidget()),),
              ProductCardWidget(productIndex: 2),
              ProductCardWidget(productIndex: 3),
            ],
          ),
        ),
      ),
    );
  }
}
