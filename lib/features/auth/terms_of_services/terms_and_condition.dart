import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/utils/common/common_widgets/custom_app_bar.dart';
import '../../../../core/utils/common/common_widgets/primary_button.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_sizes.dart';
import '../../../../core/utils/constants/app_strings.dart';
import '../../../../core/utils/constants/app_styles.dart';

class TermsAndCondition extends StatefulWidget {
  const TermsAndCondition({super.key});

  @override
  State<TermsAndCondition> createState() => _TermsAndConditionState();
}

class _TermsAndConditionState extends State<TermsAndCondition> {
  // Helper to reduce code repetition
  List<Widget> _buildSection(String heading, String subtext) {
    return [
      SizedBox(height: BSizes.xl),
      Text(
        heading,
        style: BAppStyles.poppins(
          color: BAppColors.white,
          fontSize: BSizes.fontSizeMd,
          weight: FontWeight.bold,
        ),
        textAlign: TextAlign.left,
      ),
      Text(
        subtext,
        style: BAppStyles.poppins(
          color: BAppColors.white,
          fontSize: BSizes.fontSizeMd,
          weight: FontWeight.normal,
        ),
        textAlign: TextAlign.left,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = BSizes.screenHeight(context);

    return Scaffold(
      backgroundColor: BAppColors.primary,

      // App Bar
      appBar: CustomAppBar(
        showBack: true,
        showSkip: false,
        showLogo: false,
        showNotification: false,
        onBack: () {
          Navigator.pop(context);
        },
        onSkip: () {},
      ),

      // Body
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: BSizes.md),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Title
                Center(
                  child: Text(
                    AppStrings.termsTitle,
                    style: BAppStyles.poppins(
                      color: BAppColors.white,
                      fontSize: BSizes.fontSizeLhx,
                      weight: FontWeight.w500,
                    ),
                  ),
                ),

                SizedBox(height: BSizes.md),

                // Reusable function for headings + subtext
                ..._buildSection(AppStrings.heading1, AppStrings.subText1),
                ..._buildSection(AppStrings.heading2, AppStrings.subText2),
                ..._buildSection(AppStrings.heading3, AppStrings.subText3),
                ..._buildSection(AppStrings.heading4, AppStrings.subText4),
                ..._buildSection(AppStrings.heading5, AppStrings.subText5),
                ..._buildSection(AppStrings.heading6, AppStrings.subText6),
                ..._buildSection(AppStrings.heading7, AppStrings.subText7),
                ..._buildSection(AppStrings.heading8, AppStrings.subText8),
                ..._buildSection(AppStrings.heading9, AppStrings.subText9),

                SizedBox(height: screenHeight * 0.08),

                // Continue Button
                PrimaryButton(
                  backgroundColor: BAppColors.dark,
                  text: "Sign Up",
                  onPressed: () {
                    context.go('/interestScreen');
                  },
                  borderWidth: 2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
