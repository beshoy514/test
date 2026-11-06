import 'package:clean_ops/core/constants/brand_colors.dart';
import 'package:flutter/material.dart';

class CustomOnboardingPageIndicator extends StatelessWidget {
  const CustomOnboardingPageIndicator({
    required this.currentPage,
    required this.pageCount,
    super.key,
  });

  final int currentPage;
  final int pageCount;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(pageCount, (index) {
        final isSelected = index == currentPage;

        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          margin: const EdgeInsets.symmetric(horizontal: 4),
          width: isSelected ? 15 : 6,
          height: 6,
          decoration: BoxDecoration(
            color: isSelected ? AppColors.orange : const Color(0xFFD5DCE5),
            borderRadius: BorderRadius.circular(20),
          ),
        );
      }),
    );
  }
}
