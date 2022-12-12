import 'dart:async';
import 'package:case3/home/module/tutorial_page/view_model/tutorialpage_info.dart';
import 'package:case3/home/module/welcome_page/welcome_screen.dart';
import 'package:flutter/material.dart';

class TutorialPage extends StatefulWidget {
  const TutorialPage({Key? key}) : super(key: key);
  @override
  State<TutorialPage> createState() => _TutorialPageState();
}

class _TutorialPageState extends State<TutorialPage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  Timer? _timer;
  // ignore: non_constant_identifier_names
  final List<TutorialInfo> _TutorialPages = [
    TutorialInfo(
      title: 'Easy ATM',
      subtitle: 'Pay Your\nCredit Card Bill',
      description:
          'Fugiat nulla pariatur Nemo enim ipsam \nvoluptatem quia voluptas',
      imageAsset: 'images1/p2.JPG',
    ),
    TutorialInfo(
      title: 'Easy ATM',
      subtitle: 'Cashout Anywhere \nNo ATM No Problem',
      description:
          'Fugiat nulla pariatur Nemo enim ipsam \nvoluptatem quia voluptas',
      imageAsset: 'images1/p2.JPG',
    ),
    TutorialInfo(
      title: 'Easy ATM',
      subtitle: 'Send Money \nTo Anyone ',
      description:
          'Fugiat nulla pariatur Nemo enim ipsam \nvoluptatem quia voluptas',
      imageAsset: 'images1/p1.JPG',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: _buildPageView(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(
                flex: 3,
              ),
              SizedBox(
                height: 10,
                width: (_TutorialPages.length * 10) +
                    ((_TutorialPages.length - 1) * 5),
                child: _buildDotIndicator(),
              ),
              const Spacer(
                flex: 2,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomeScreen()));
                },
                child: const Text(
                  'Skip',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  PageView _buildPageView() {
    return PageView.builder(
      controller: _pageController,
      itemCount: _TutorialPages.length,
      onPageChanged: (index) {
        setState(() {
          _selectedIndex = index;
        });
        Timer.periodic(const Duration(seconds: 2), (Timer timer) {});
      },
      itemBuilder: (context, index) {
        return GestureDetector(
          onLongPressStart: (detail) {
            _stopTimer();
            print('Stop Navigating');
          },
          onLongPressEnd: (detail) {
            _startTimer();
            print('start navigating');
          },
          child: _buildPageContent(index),
        );
      },
    );
  }

  Widget _buildPageContent(index) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 80),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(_TutorialPages[index].title,
              style: const TextStyle(fontSize: 15, color: Colors.red)),
          const SizedBox(
            height: 10,
          ),
          Text(
            _TutorialPages[index].subtitle,
            style: TextStyle(fontSize: 25, color: Colors.indigo.shade900),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(_TutorialPages[index].description,
              style: const TextStyle(fontSize: 10)),
          const Spacer(
            flex: 2,
          ),
          Center(
            child: Image.asset(_TutorialPages[index].imageAsset),
          ),
          const Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }

  Widget _buildDotIndicator() {
    return ListView.separated(
      itemCount: _TutorialPages.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(50),
          height: 10,
          width: 10,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _selectedIndex == index ? Colors.red : Colors.grey,
          ),
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: 5,
        );
      },
    );
  }

  _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      setState(() {
        if (_selectedIndex == _TutorialPages.length - 1) {
          _pageController.jumpToPage(0);
        } else {
          _pageController.nextPage(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeInOut);
        }
      });
    });
  }

  _stopTimer() {
    _timer?.cancel();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _stopTimer();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _startTimer();
  }
}
