import 'package:bogos_app/features/auth/screens/auth_home/widgets/social_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../core/utils/common/common_widgets/primary_button.dart';
import '../../../../core/utils/common/common_widgets/text_field.dart';
import '../../../../core/utils/constants/app_assets.dart';
import '../../../../core/utils/constants/app_colors.dart';
import '../../../../core/utils/constants/app_strings.dart';
import '../../../../core/utils/constants/app_styles.dart';

class AuthHomeScreen extends StatefulWidget {
  const AuthHomeScreen({super.key});

  @override
  State<AuthHomeScreen> createState() => _AuthHomeScreenState();
}

class _AuthHomeScreenState extends State<AuthHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: BAppColors.primary,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              /// Top logo + corner
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
                    left: 130,
                    bottom: 0,
                    child: Center(
                      child: SvgPicture.asset(
                        AppAssets.signInLogo,
                        width: 42,
                        height: 42,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 10),

              /// Title
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Column(
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
                    const SizedBox(height: 25),

                    CustomTextField(
                      hintText: AppStrings.password,
                      svgIcon: SvgPicture.asset(AppAssets.person),
                    ),

                    /// Sign In Button
                    PrimaryButton(
                      backgroundColor: BAppColors.primary,
                      borderColor: BAppColors.white,
                      text: AppStrings.signInButton,
                      onPressed: () {
                        // Navigation ya action
                      },
                    ),

                    const SizedBox(height: 12),

                    /// Login Button
                    PrimaryButton(

                      text: "Sign in",
                      onPressed: () {},
                      // borderColor: Colors.white, // shows border
                      // borderWidth: 2,
                      backgroundColor: Colors.black,
                    )

                  ],
                ),
              ),

              const SizedBox(height: 40),

              /// Social Buttons Stack
              SizedBox(
                height: 320,
                width: double.infinity,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    /// Apple (left, smallest)
                    Positioned(
                      left: 0,
                      bottom: 0,
                      child: SocialLoginButton(
                        iconPath: AppAssets.iphoneIcon,
                        text: AppStrings.apple,
                        containerColor: Colors.black,
                        textColor: Colors.white,
                        allowMultilineText: true,
                        contentPadding: EdgeInsets.only(
                          top: 50,
                          left: 0,
                          right: 29,
                        ),
                        width: 140,
                        height: 180,
                        borderRadius: 30,
                        iconSize: 48,
                        onTap: () {
                          // Handle Apple login
                        },
                      ),
                    ),

                    /// Google (center, biggest)
                    Positioned(
                      left: 115,
                      child: SocialLoginButton(
                        iconPath: AppAssets.googleIcon,
                        text: AppStrings.google,
                        containerColor: BAppColors.googleContainerColor,
                        textColor: Colors.white,
                        allowMultilineText: true,
                        width: 250,
                        height: 280,
                        borderRadius: 30,
                        iconSize: 52,
                        contentPadding: EdgeInsets.only(
                          top: 50,
                          left: 0,
                          right: 110,
                        ),
                        onTap: () {},
                      ),
                    ),

                    /// Facebook (right, medium)
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: SocialLoginButton(
                        iconPath: AppAssets.facebookIcon,
                        text: AppStrings.facebook,
                        containerColor: BAppColors.primary,
                        allowMultilineText: true,
                        textColor: Colors.white,
                        contentPadding: EdgeInsets.only(
                          top: 50,
                          left: 12,
                          right: 12,
                        ),
                        width: 120,
                        height: 220,
                        borderRadius: 30,
                        iconSize: 48,
                        onTap: () {
                          // Handle Facebook login
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );  }
}
