import 'package:flutter/material.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_sizes.dart';
import '../../constants/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? icon; // Optional IconData
  final Widget? svgIcon; // Optional SVG or any Widget
  final TextEditingController? controller;
  final bool obscureText;
  final double width;
  final double height;

  const CustomTextField({
    super.key,
    required this.hintText,
    this.icon,
    this.svgIcon,
    this.controller,
    this.obscureText = false,
    this.width = double.infinity,
    this.height = 92,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        style: BAppStyles.poppins(
          color: Colors.white,
          fontSize: BSizes.fontSizeLg,
          weight: FontWeight.w400,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: BAppStyles.poppins(
            color: Colors.white.withOpacity(0.5),
            fontSize: BSizes.md,
            weight: FontWeight.w400,
          ),
          filled: true,
          fillColor: const Color(0xFFD9D9D9).withOpacity(0.15),
          prefixIcon: (icon != null || svgIcon != null)
              ? Padding(
            padding: const EdgeInsets.all(12.0),
            child: svgIcon ??
                Icon(
                  icon,
                  color: Colors.white,
                  size: 29,
                ),
          )
              : null,
          contentPadding: const EdgeInsets.symmetric(vertical: 25),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
            borderSide: BorderSide(
              color: Colors.white.withOpacity(0.5),
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(35),
            borderSide: const BorderSide(
              color: BAppColors.white,
              width: 2,
            ),
          ),
        ),
      ),
    );
  }
}
