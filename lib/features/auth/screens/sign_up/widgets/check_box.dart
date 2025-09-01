import 'package:flutter/material.dart';
import '../../../../../core/utils/constants/app_colors.dart';

class CustomCheckBox extends StatefulWidget {
  const CustomCheckBox({super.key});

  @override
  State<CustomCheckBox> createState() => _CustomCheckBoxState();
}

class _CustomCheckBoxState extends State<CustomCheckBox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.7,
      child: Checkbox(
        side: BorderSide(color: BAppColors.white,width: 1.5),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6)
        ),
        value: isChecked,
        checkColor: BAppColors.primary,
        activeColor: BAppColors.white,
        onChanged: (value) {
          setState(() {
            isChecked = value ?? false;
          });
        },
      ),
    );
  }
}