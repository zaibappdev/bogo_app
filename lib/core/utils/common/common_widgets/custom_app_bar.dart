import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_styles.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  final bool showBack;
  final bool showSkip;
  final bool showLogo;
  final bool showNotification;
  final VoidCallback? onBack;
  final VoidCallback? onSkip;
  final VoidCallback? onNotification;

  const CustomAppBar({
    super.key,
    this.title,
    this.showBack = false,
    this.showSkip = false,
    this.showLogo = false,
    this.showNotification = false,
    this.onBack,
    this.onSkip,
    this.onNotification,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      surfaceTintColor: BAppColors.white,
      // default back button remove
      titleSpacing: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // 🔹 Left Side
          Row(
            children: [
              if (showBack)
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: onBack ?? () => Navigator.pop(context),
                ),
              if (title != null)
                Text(
                  title!,
                  style: BAppStyles.poppins(
                    color: Colors.white,
                    fontSize: 18,
                    weight: FontWeight.w600,
                  ),
                ),
            ],
          ),

          // Center
          if (showLogo)
            Image.asset(
              "assets/logo.png", //  Apka bogo logo
              height: 40,
            ),

          // Right Side
          Row(
            children: [
              if (showSkip)
                GestureDetector(
                  onTap: onSkip,
                  child: Text(
                    "Skip →",
                    style: BAppStyles.poppins(
                      color: Colors.white,
                      fontSize: 16,
                      weight: FontWeight.w400,
                    ),
                  ),
                ),
              if (showNotification)
                IconButton(
                  icon: const Icon(Icons.notifications, color: Colors.white),
                  onPressed: onNotification,
                ),
            ],
          ),
        ],
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
