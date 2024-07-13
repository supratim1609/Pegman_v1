import 'package:flutter/material.dart';
import 'package:pegman/core/colors.dart';
import 'package:pegman/core/style.dart';

class ViewAllHeaderText extends StatelessWidget {
  final String title;
  final Function() onPress;
  final bool showViewAll;
  const ViewAllHeaderText(
      {super.key,
      required this.onPress,
      required this.title,
      this.showViewAll = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: textStyle16.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        if (showViewAll)
          TextButton(
            onPressed: onPress,
            child: Text(
              'View All',
              style: textStyle16.copyWith(
                fontWeight: FontWeight.w600,
                color: primary,
              ),
            ),
          )
      ],
    );
  }
}
