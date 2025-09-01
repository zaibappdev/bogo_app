import 'package:bogos_app/features/auth/screens/sign_in/widgets/social_icon_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/common/common_widgets/primary_button.dart';
import '../../../../core/utils/common/common_widgets/text_field.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_strings.dart';
import '../../../../core/utils/constants/app_styles.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BAppColors.primary,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 157.0),
                  child: Image(
                    alignment: Alignment.topRight,
                    image: AssetImage(AppAssets.cornerImage),
                    width: 200,
                    height: 200,
                  ),
                ),
                Positioned(
                  left: 120,
                  top: 90,
                  child: Center(
                    child: Image.asset(
                      AppAssets.signInLogo,
                      width: 42,
                      height: 42,
                    ),
                  ),
                ),
                Positioned(
                  left: 60,
                  top: 138,
                  child: Container(
                    width: 46,
                    height: 46,
                    decoration: BoxDecoration(
                      color: BAppColors.white.withOpacity(0.2),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppStrings.createYourAccount,
                    style: BAppStyles.poppins(
                      color: BAppColors.white,
                      fontSize: 44,
                      weight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 27),

                  CustomTextField(
                    hintText: AppStrings.yourPhoneNumber,
                    svgIcon: SvgPicture.asset(AppAssets.person),
                  ),
                  CustomTextField(
                    hintText: AppStrings.password,
                    svgIcon: SvgPicture.asset(AppAssets.lock),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      children: [
                        Text(
                          AppStrings.rememberMe,
                          style: BAppStyles.poppins(
                            color: BAppColors.white,
                            fontSize: 14,
                            weight: FontWeight.w400,
                          ),
                        ),
                        Spacer(),
                        Text(
                          AppStrings.forgot,
                          style: BAppStyles.poppins(
                            color: BAppColors.error400,
                            fontSize: 12,
                            weight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          AppStrings.myPassword,
                          style: BAppStyles.poppins(
                            color: BAppColors.white,
                            fontSize: 12,
                            weight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),

                  // signup button
                  PrimaryButton(
                    text: AppStrings.signInButton,
                    onPressed: () {},
                  ),

                  // social icons
                  SizedBox(height: 18),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: SocialButton(
                          color: BAppColors.primary,
                          iconPath: AppAssets.facebookIcon,
                          onTap: () {},
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: SocialButton(
                          color: BAppColors.googleContainerColor,
                          iconPath: AppAssets.googleIcon,
                          onTap: () {},
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: SocialButton(
                          color: BAppColors.black1000,
                          iconPath: AppAssets.iphoneIcon,

                          onTap: () {},
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),

                  //
                  Container(
                    width: double.infinity,
                    height: 42,
                    decoration: BoxDecoration(
                      color: BAppColors.white.withOpacity(0.15),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 14.0),
                          child: Text(
                            AppStrings.alreadyHaveAnAccount,
                            style: BAppStyles.poppins(
                              color: BAppColors.white,
                              fontSize: 16,
                              weight: FontWeight.w400,
                            ),
                          ),
                        ),
                        SizedBox(width: 13),
                        Expanded(
                          child: PrimaryButton(
                            width: 177,
                            height: 42,
                            text: AppStrings.signInButton,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 25),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
