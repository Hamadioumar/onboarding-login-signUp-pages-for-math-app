import 'package:flutter/material.dart';

class OnboardingPageInducator extends StatelessWidget {
  const OnboardingPageInducator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: isActive ? 12 : 4,
      width: 4,
      decoration: BoxDecoration(
          color: isActive ? Colors.deepPurpleAccent : Colors.deepPurple,
          borderRadius: const BorderRadius.all(Radius.circular(12))),
    );
  }
}
