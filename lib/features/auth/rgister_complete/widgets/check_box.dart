import 'package:flutter/material.dart';

import '../../../../../core/utils/constants/app_assets.dart';
import '../../../../../core/utils/constants/app_colors.dart';

class CheckWithRipple extends StatefulWidget {
  const CheckWithRipple({super.key});

  @override
  State<CheckWithRipple> createState() => _CheckWithRippleState();
}

class _CheckWithRippleState extends State<CheckWithRipple>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  final double imageRadius = 100;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(reverse: true);

    _animation = Tween<double>(
      begin: imageRadius * 2, // starting ripple size
      end: imageRadius * 2.6, // expanding ripple size
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          // ✅ Ripple background
          AnimatedBuilder(
            animation: _animation,
            builder: (_, child) {
              return Container(
                width: _animation.value,
                height: _animation.value,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: BAppColors.white.withOpacity(0.2), // ripple color
                ),
              );
            },
          ),

          CircleAvatar(
            radius: imageRadius,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage(AppAssets.profile),
          ),
        ],
      ),
    );
  }
}
