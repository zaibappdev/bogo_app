import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../core/utils/constants/app_styles.dart';

class SocialLoginButton extends StatelessWidget {
  final String iconPath;
  final String text;
  final Color containerColor;
  final Color textColor;
  final double width;
  final double height;
  final double borderRadius;
  final double iconSize;
  final VoidCallback onTap;
  final Axis layout;
  final EdgeInsetsGeometry contentPadding;

  /// 👇 Naya property sirf is button ka text 2 line pe allow karne ke liye
  final bool allowMultilineText;

  const SocialLoginButton({
    super.key,
    required this.iconPath,
    required this.text,
    this.containerColor = Colors.black,
    this.textColor = Colors.white,
    this.width = 150,
    this.height = 180,
    this.borderRadius = 30,
    this.iconSize = 50,
    required this.onTap,
    this.layout = Axis.vertical,
    this.contentPadding = const EdgeInsets.all(0),
    this.allowMultilineText = false, // default single line
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(borderRadius),
          ),
        ),
        child: Padding(
          padding: contentPadding,
          child: layout == Axis.vertical
              ? Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconPath,
                width: iconSize,
                height: iconSize,
                color: textColor,
              ),
              const SizedBox(height: 12),
              Text(
                text,
                style: BAppStyles.poppins(
                  color: textColor,
                  fontSize: 15,
                  weight: FontWeight.w400,
                ),
                textAlign: TextAlign.center,
                softWrap: true,
                maxLines: allowMultilineText ? 2 : 1, // 👈 control
                overflow: TextOverflow.visible,
              ),
            ],
          )
              : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconPath,
                width: iconSize,
                height: iconSize,
                color: textColor,
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  text,
                  style: BAppStyles.poppins(
                    color: textColor,
                    fontSize: 15,
                    weight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                  softWrap: true,
                  maxLines: allowMultilineText ? 2 : 1,
                  overflow: TextOverflow.visible,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
