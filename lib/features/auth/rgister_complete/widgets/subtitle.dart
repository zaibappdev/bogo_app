import 'package:bogos_app/core/utils/constants/app_colors.dart';
import '../../../../../core/utils/constants/app_sizes.dart';
import '../../../../../core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';

class SubtitleWidget extends StatelessWidget {
  final String text;

  const SubtitleWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: BAppStyles.poppins(
        fontSize: BSizes.fontSizeMd,
        weight: FontWeight.w400,
        color: BAppColors.warning400,
      ),
    );
  }
}
