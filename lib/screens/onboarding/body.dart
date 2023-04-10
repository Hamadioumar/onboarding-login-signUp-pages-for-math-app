import 'package:flutter/material.dart';
import '../Login/login_screen.dart';
import 'onboarding_images.dart';
import 'onboarding_pages_inducator.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  late PageController _pageController;
  int _pageIndex = 0;

  final List<Welcome> _welcomList = [
    Welcome(
        image: 'assets/images/welcome5.png',
        title:
            '"Pure mathematics is, in its way, the poetry of logical ideas." - Albert Einstein',
        description:
            'This quote by Einstein reflects his view of mathematics as a beautiful and creative pursuit, where logical ideas are crafted into a form of art.'),
    Welcome(
        image: 'assets/images/welcome3.png',
        title:
            '"Mathematics is not about numbers, equations, computations, or algorithms: it is about understanding." - William Paul Thurston',
        description:
            "Thurston's quote reminds us that mathematics is not just about memorizing formulas or solving problems, but about developing a deeper understanding of the concepts and principles behind them."),
    Welcome(
        image: 'assets/images/welcome1.png',
        title: '"The only way to learn mathematics is to do mathematics."',
        description:
            "Halmos's quote emphasizes the importance of active learning and practice in mathematics. Rather than just memorizing formulas and rules, we must actively engage with the material and apply it in different contexts to truly understand it.")
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: _welcomList.length,
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                itemBuilder: (context, index) => WelcomeImages(
                  image: _welcomList[index].image,
                  title: _welcomList[index].title,
                  description: _welcomList[index].description,
                ),
              ),
            ),
            Row(
              children: [
                ...List.generate(
                  _welcomList.length,
                  (index) => Padding(
                    padding: EdgeInsets.only(right: 4),
                    child:
                        OnboardingPageInducator(isActive: index == _pageIndex),
                  ),
                ),
                const Spacer(),
                SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                        onPressed: () {
                          _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.ease);
                          if (_pageIndex == _welcomList.length - 1) {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return const LoginScreen();
                            }));
                          }
                        },
                        style: ElevatedButton.styleFrom(
                            shape: const CircleBorder(),
                            backgroundColor: Colors.deepPurpleAccent),
                        child: const Icon(
                          Icons.arrow_right_alt_outlined,
                          color: Colors.white,
                          size: 35,
                        ))),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
