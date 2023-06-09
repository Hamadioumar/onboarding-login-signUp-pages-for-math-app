import 'package:flutter/material.dart';

class WelcomeImages extends StatelessWidget {
  WelcomeImages({
    Key? key,
    required this.image,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Spacer(),
      Image.asset(
        image,
        height: 250,
      ),
      const Spacer(),
      Text(
        title,
        textAlign: TextAlign.center,
        style: Theme.of(context)
            .textTheme
            .headline5!
            .copyWith(fontWeight: FontWeight.w500),
      ),
      const SizedBox(
        height: 16,
      ),
      Text(
        description,
        textAlign: TextAlign.center,
      ),
      const Spacer(),
    ]);
  }
}


class Welcome {
  final String image, title, description;
  Welcome({
    required this.image,
    required this.title,
    required this.description,
  });
}




