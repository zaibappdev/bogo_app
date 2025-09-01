import 'package:bogos_app/features/auth/screens/sign_up/provider/radio_button_provider.dart';
import 'package:bogos_app/features/auth/screens/sign_up/widgets/agreement_statement.dart';
import 'package:bogos_app/features/auth/screens/sign_up/widgets/date_slecter.dart';
import 'package:bogos_app/features/auth/screens/sign_up/widgets/radio_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../../../../core/utils/common/common_widgets/custom_app_bar.dart';
import '../../../../core/utils/common/common_widgets/primary_button.dart';
import '../../../../core/utils/common/common_widgets/text_field.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_sizes.dart';
import '../../../../core/utils/constants/app_strings.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final readRProvider = context.read<RadioButtonProvider>();
    final watchRProvider = context.watch<RadioButtonProvider>();
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: BAppColors.primary,

      appBar: CustomAppBar(showBack: true),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 74,
                  backgroundColor: BAppColors.primary,
                  backgroundImage: AssetImage(AppAssets.profile),
                ),
              ),
              SizedBox(height: BSizes.spaceBtwInputFields),
              CustomTextField(
                hintText: AppStrings.password,
                svgIcon: SvgPicture.asset(AppAssets.person),
              ),

              CustomTextField(
                hintText: AppStrings.password,
                svgIcon: SvgPicture.asset(AppAssets.person),
              ),

              Center(
                child: SizedBox(
                  width: 410,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RadioButton(
                        imageIcon: Icons.male_outlined,
                        title: 'male',
                        selectedValue: watchRProvider.selectedValue,
                        onChanged: (value) {
                          readRProvider.assignValue(value);
                        },
                      ),
                      SizedBox(height: BSizes.spaceBtwInputFields),
                      RadioButton(
                        imageIcon: Icons.female_outlined,
                        title: 'female',
                        selectedValue: readRProvider.selectedValue,
                        onChanged: (value) {
                          readRProvider.assignValue(value);
                        },
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: BSizes.spaceBtwItems),
              DateSelector(),
              SizedBox(height: BSizes.spaceBtwItems),

              CustomTextField(
                hintText: AppStrings.email,
                svgIcon: SvgPicture.asset(AppAssets.person),
              ),
              // CustomTextField(
              //   hintText: AppStrings.emailHint,
              //   prefixIcon: Icons.email_outlined,
              // ),
              // CustomTextField(
              //   hintText: AppStrings.phoneNoHint,
              //   prefixIcon: Icons.phone_outlined,
              // ),
              // CustomTextField(
              //   hintText: AppStrings.passwordHint,
              //   obscureText: true,
              //   prefixIcon: Icons.lock_outline,
              // ),
              AgreementStatement(),
              SizedBox(height: BSizes.spaceBtwItems),
              PrimaryButton(text: 'Continue', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
