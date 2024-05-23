import 'package:finals_mobile_palman_lydzustre_4/constants/themes.dart';
import 'package:finals_mobile_palman_lydzustre_4/controllers/product_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProductCardWidget extends ConsumerWidget {
  const ProductCardWidget({
    super.key,
    required this.productIndex,
  });

  final int productIndex;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final product = ref.watch(productNotifierProvider);
    return Container(
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
                  child: Image.asset(product[productIndex].imgUrl),
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
                    Text(
                      product[productIndex].title,
                      style: AppTheme.kCardTitle,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(product[productIndex].shortDescription,
                        style: AppTheme.kBodyText),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${product[productIndex].price}',
                          style: AppTheme.kCardTitle,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.add_circle,
                            size: 35,
                          ),
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
    );
  }
}
