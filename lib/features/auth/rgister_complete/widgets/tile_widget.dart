import '../../../../../core/utils/constants/app_colors.dart';
import '../../../../../core/utils/constants/app_sizes.dart';
import '../../../../../core/utils/constants/app_styles.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  final String text;

  const TitleWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: BAppStyles.poppins(
        fontSize: BSizes.fontSizeLIx,
        weight: FontWeight.w700,
        color: BAppColors.white,
      ),
    );
  }
}
