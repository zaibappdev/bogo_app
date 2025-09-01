import 'package:flutter/material.dart';
import '../../../../../core/utils/constants/app_colors.dart';

class RadioButton extends StatelessWidget {
  final String title;
  final dynamic imageIcon;

  final String selectedValue;
  final ValueChanged<String?> onChanged;

  const RadioButton({
    required this.imageIcon,
    required this.title,
    required this.selectedValue,
    required this.onChanged,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 92,
      width: 184,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.15),
        border: Border.all(color: Colors.white.withOpacity(0.5), width: 1.5),
        borderRadius: BorderRadius.circular(35),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            imageIcon is IconData
                ? Icon(imageIcon, size: 36)
                : Image.asset(imageIcon, height: 36, width: 36),
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
                fontFamily: 'Poppins',
              ),
            ),
            Transform.scale(
              scale: 1.65,
              child: Radio<String>(
                value: title,
                groupValue: selectedValue,
                fillColor: MaterialStateProperty.all(BAppColors.white),
                onChanged: onChanged,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
