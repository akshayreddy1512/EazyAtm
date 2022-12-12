import 'package:case3/home/module/welcome_page/welcome_screen.dart';
import 'package:flutter/material.dart';

class BottomNavigator extends StatelessWidget {
  const BottomNavigator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        InkWell(
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const WelcomeScreen(),
              ),
            );
          },
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
            children:  const <Widget>[
              Icon(
                Icons.history,
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
}