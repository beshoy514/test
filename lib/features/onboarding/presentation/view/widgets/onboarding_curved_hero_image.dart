import 'package:flutter/material.dart';

class CustomOnboardingImage extends StatelessWidget {
  const CustomOnboardingImage({
    required this.imagePath,
    this.width = double.infinity,
    this.height = double.infinity,
    this.borderRadius = BorderRadius.zero,
    this.fit = BoxFit.cover,
    this.alignment = Alignment.center,
    super.key,
  });

  final String imagePath;
  final double? width;
  final double? height;
  final BorderRadius borderRadius;
  final BoxFit fit;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ClipRRect(
        borderRadius: borderRadius,
        child: ClipPath(
          clipper: const _OnboardingImageClipper(),
          child: Image.asset(
            imagePath,
            width: width,
            height: height,
            fit: fit,
            alignment: alignment,
          ),
        ),
      ),
    );
  }
}

class _OnboardingImageClipper extends CustomClipper<Path> {
  const _OnboardingImageClipper();

  @override
  Path getClip(Size size) {
    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height * 0.91)
      ..cubicTo(
        size.width * 0.77,
        size.height * 1.01,
        size.width * 0.40,
        size.height * 0.99,
        0,
        size.height * 0.94,
      )
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
