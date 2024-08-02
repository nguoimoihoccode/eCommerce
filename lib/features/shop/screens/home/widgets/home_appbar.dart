import 'package:bimnext_app/common/widgets/appbar/appbar.dart';
import 'package:bimnext_app/common/widgets/notifications/nofity_menu_icon.dart';
import 'package:bimnext_app/util/constants/colors.dart';
import 'package:bimnext_app/util/constants/text_strings.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(TTexts.homeAppbarTitle,
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .apply(color: TColors.grey)),
            Text(TTexts.homeAppbarSubTitle,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .apply(color: TColors.white))
          ]),
      actions: [
        NotifyCounterIcon(
          onPressed: () {},
          iconColor: TColors.white,
        )
      ],
    );
  }
}
