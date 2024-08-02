import 'package:bimnext_app/common/widgets/custom_shapes/containers/primary_header_container.dart';
import 'package:bimnext_app/common/widgets/custom_shapes/containers/search_container.dart';
import 'package:bimnext_app/common/widgets/texts/section_heading.dart';
import 'package:bimnext_app/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:bimnext_app/features/shop/screens/home/widgets/home_categories.dart';
import 'package:bimnext_app/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  /// -- Appbar
                  HomeAppBar(),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// -- SearchBar
                  SearchContainer(text: 'Search'),
                  SizedBox(height: TSizes.spaceBtwSections),

                  /// -- Categories
                  Padding(
                      padding: EdgeInsets.only(left: TSizes.defaultSpace),
                      child: Column(
                        children: [
                          /// -- Heading
                          SectionHeading(
                              title: 'Popular Categories',
                              showActionButton: false,
                              textColor: Colors.white),
                          SizedBox(height: TSizes.spaceBtwItems),

                          /// Categories
                          HomeCategories()
                        ],
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
