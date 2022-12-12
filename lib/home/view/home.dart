import 'dart:async';
import 'package:case3/home/model/CardContent.dart';
import 'package:case3/home/module/recharge_payments/recharge_paybills.dart';
import 'package:case3/home/module/recharge_payments/topAppBar.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();
  Timer? _timer;
  // ignore: non_constant_identifier_names
  final List<CardContent> _Contentpage = [
    CardContent(
      title: 'NEW PROFITS\nWITH THE GOOD\nOLD MANNERS',
      subtitle: 'by Victoria W',
      description: 'Head of Publishers Support',
      imageAsset: 'images1/p2.JPG',
    ),
    CardContent(
      title: 'NEW PROFITS\nWITH THE GOOD\nOLD MANNERS',
      subtitle: 'by Victoria W',
      description: 'Head of Publishers Support',
      imageAsset: 'images1/p2.JPG',
    ),
    CardContent(
      title: 'NEW PROFITS\nWITH THE GOOD\nOLD MANNERS',
      subtitle: 'by Victoria W',
      description: 'Head of Publishers Support',
      imageAsset: 'images1/p2.JPG',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.qr_code_scanner,
              size: 30,
            ),
          ),
          const Flexible(
            child: TopAppBar(),
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 10,
                    child: _buildPageNavigator(),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
                width: (_Contentpage.length * 10) +
                    ((_Contentpage.length - 1) * 5),
                child: _buildDotIndicator(),
              ),
              const Recharge(),
              const Recentpayments(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const AutomaticNotchedShape(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(0), topRight: Radius.circular(0))),
            RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(40)))),
        notchMargin: 10,
        child: SizedBox(
          height: 60,
          width: double.maxFinite,
          child: _buildBottomNavigator(),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.red,
        onPressed: () {},
        child: const Icon(Icons.camera),
      ),
    );
  }

  Widget _buildPageNavigator() {
    return PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _Contentpage.length,
        //controller: _pageController,
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
            child: Container(
              //height: 150,
              //width: 400,
              height: MediaQuery.of(context).size.height * 0.2,
              width: double.infinity,
              //color: Colors.red,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.rectangle,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                image: const DecorationImage(
                  image: AssetImage("assests/pf.JPG"),
                  fit: BoxFit.cover,
                ),
                //border: Border.all(color: Colors.black),
                boxShadow: [
                  BoxShadow(
                    color:
                        Colors.transparent.withOpacity(0.1), //color of shadow
                    //spreadRadius: 5,
                    blurRadius: 10,
                    offset: const Offset(1, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.navigation_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: 'NEW PROFITS\n',
                                style: TextStyle(
                                    color: Colors.brown[500],
                                    fontWeight: FontWeight.bold)),
                            TextSpan(
                                text: 'WITH ',
                                style: TextStyle(
                                    color: Colors.brown[500],
                                    fontWeight: FontWeight.bold)),
                            const TextSpan(
                                text: 'THE GOOD\nOLD MANNERS',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ),
                      const Text(
                        'by Victoria W',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'Head of Publishers Support',
                        style: TextStyle(
                            fontSize: 10,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  // padding: EdgeInsets.all(2),
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(AppImage.backgroundImage),
                          fit: BoxFit.fitWidth),
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  Widget _buildDotIndicator() {
    return ListView.separated(
      itemCount: _Contentpage.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Container(
          // padding: const EdgeInsets.all(50),
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

  Widget _buildBottomNavigator() {
    return Row(
      //mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        InkWell(
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {},
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              Icon(
                Icons.home_outlined,
                color: Colors.redAccent,
              ),
              Text("Home"),
              //const Padding(padding: EdgeInsets.all(10))
            ],
          ),
        ),
        const SizedBox(),
        InkWell(
          //focusColor: Colors.transparent,
          //hoverColor: Colors.transparent,
          //highlightColor: Colors.transparent,
          onTap: () {},
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              Icon(
                Icons.group_add_outlined,
                color: Colors.redAccent,
              ),
              Text("History"),
              //const Padding(padding: EdgeInsets.only(left: 10))
            ],
          ),
        ),
      ],
    );
  }

  _startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      setState(() {
        if (_selectedIndex == _Contentpage.length - 1) {
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
