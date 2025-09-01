import 'package:flutter/material.dart';

import '../../../../core/utils/common/common_widgets/custom_app_bar.dart';
import '../../../../core/utils/constants/app_colors.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

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

      body:Column(
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.all(6), // border thickness
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.transparent, // transparent border
                  width: 4, // border width
                ),
                gradient: LinearGradient(
                  colors: [
                    BAppColors.primary.withOpacity(0.2), // halka shade
                    BAppColors.primary,                  // main color
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: CircleAvatar(
                backgroundImage: AssetImage(""),
                radius: 74,
                backgroundColor: Colors.transparent,
              ),
            ),
          ),

        ],
      ),
    );
  }
}
