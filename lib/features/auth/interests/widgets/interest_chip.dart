import 'package:flutter/material.dart';
import '../../../../../core/utils/constants/app_colors.dart';
import '../../../../../core/utils/constants/app_styles.dart';

class InterestChip extends StatelessWidget {
  const InterestChip({
    super.key,
    required this.label,
    required this.selected,
    required this.onTap,
  });

  final String label;
  final bool selected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final Color unselectedBg = BAppColors.primary;
    const Color selectedBg = Color(0xFFF66937);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        borderRadius: BorderRadius.circular(24),
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeInOut,
          height: 62,
          decoration: BoxDecoration(
            color: selected ? selectedBg : unselectedBg,
            borderRadius: BorderRadius.circular(24),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // label
              Expanded(
                child: Text(
                  label,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: BAppStyles.poppins(
                    color: BAppColors.white,
                    fontSize: 14,
                    weight: FontWeight.w500,
                  ),
                ),
              ),

              const SizedBox(width: 12),

              // right circular icon: + when not selected, × when selected
              Container(
                width: 28,
                height: 28,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                alignment: Alignment.center,
                child: Icon(
                  selected ? Icons.close_rounded : Icons.add_rounded,
                  size: 18,
                  color: selected ? Colors.black54 : BAppColors.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
