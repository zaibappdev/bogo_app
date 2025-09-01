import 'package:flutter/material.dart';
import '../../constants/app_sizes.dart';
import '../../constants/app_styles.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? borderColor; // if provided => border visible
  final double? borderWidth; // optional width
  final double width;
  final double height;

  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.width = double.infinity,
    this.height = 92,
  });

  @override
  Widget build(BuildContext context) {
    final hasBorder = borderColor != null;

    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            backgroundColor ?? Colors.transparent,
          ),
          foregroundColor: MaterialStateProperty.all(Colors.white),
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          elevation: MaterialStateProperty.all(0),
          surfaceTintColor: MaterialStateProperty.all(Colors.transparent),

          side: MaterialStateProperty.all(
            hasBorder
                ? BorderSide(color: borderColor!, width: borderWidth ?? 2)
                : BorderSide.none,
          ),

          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(46)),
          ),
        ),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: BAppStyles.poppins(
            color: Colors.white,
            fontSize: BSizes.lg,
            weight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
