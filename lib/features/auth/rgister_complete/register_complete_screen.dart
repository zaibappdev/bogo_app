
import 'package:bogos_app/features/auth/rgister_complete/widgets/check_box.dart';
import 'package:bogos_app/features/auth/rgister_complete/widgets/subtitle.dart';
import 'package:bogos_app/features/auth/rgister_complete/widgets/tile_widget.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/common/common_widgets/custom_app_bar.dart';
import '../../../../core/utils/common/common_widgets/primary_button.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_strings.dart';
import '../../../../core/utils/constants/app_sizes.dart';

class RegisterCompleteScreen extends StatelessWidget {
  const RegisterCompleteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BAppColors.primary,
      appBar: CustomAppBar(
        showBack: true,
        showSkip: false,
        showLogo: false,
        showNotification: false,
        onBack: () {
          Navigator.pop(context);
        },
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(BSizes.xl),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: BSizes.xl),

              // Title
              TitleWidget(text: AppStrings.registerTitle),

              SizedBox(height: 8),

              // Subtitle
              SubtitleWidget(text: AppStrings.registerSubtitle),

              Spacer(),

              //  Ripple Image Animation
              Center(child: CheckWithRipple()),

              Spacer(),

              //  Buttons Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: PrimaryButton(
                      backgroundColor: BAppColors.warning400,
                      //  round like design
                      text: 'Subscription',
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: PrimaryButton(
                      backgroundColor: Colors.transparent,
                      text: 'Start',
                      onPressed: () {},
                    ),
                  ),
                ],
              ),

              SizedBox(height: BSizes.xl),
            ],
          ),
        ),
      ),
    );
  }
}
