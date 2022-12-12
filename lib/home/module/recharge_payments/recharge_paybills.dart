import 'package:case3/home/model/CardContent.dart';
import 'package:flutter/material.dart';

class Box1 extends StatefulWidget {
  const Box1({
    Key? key,
  }) : super(key: key);

  @override
  State<Box1> createState() => _Box1State();
}

class _Box1State extends State<Box1> {
  @override
  Widget build(BuildContext context) {
    return Row(
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
                          color: Colors.white, fontWeight: FontWeight.bold)),
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
            // color: Colors.white,
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }
}

class Recharge extends StatefulWidget {
  const Recharge({
    Key? key,
  }) : super(key: key);

  @override
  State<Recharge> createState() => _RechargeState();
}

class _RechargeState extends State<Recharge> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(30.0),
      //height: 150,
      //width: 400,
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 10,
      //color: Colors.transparent,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        //border: Border.all(color: Colors.black),
        boxShadow: [
          BoxShadow(
            color: Colors.transparent.withOpacity(0.5), //color of shadow
            //spreadRadius: 5,
            blurRadius: 10,
            offset: const Offset(1, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const SizedBox(
                width: 20,
              ),
              const Expanded(
                child: Text(
                  'Recharge & Pay Bills ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                height: 30,
                child: ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    //minimumSize: const Size(0,0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: Row(
                    children: const <Widget>[
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'See All',
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_right_alt_sharp,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    Icon(
                      Icons.mobile_screen_share_outlined,
                      color: Colors.redAccent,
                    ),
                    SizedBox(height: 10),
                    Text(" Mobile\nRecharge"),
                    //const Padding(padding: EdgeInsets.all(10))
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    Icon(
                      Icons.cell_tower_outlined,
                      color: Colors.redAccent,
                    ),
                    SizedBox(height: 10),
                    Text("DTH\n"),
                    //const Padding(padding: EdgeInsets.all(10))
                  ],
                ),
              ),
              const SizedBox(),
              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    Icon(
                      Icons.wb_incandescent_outlined,
                      color: Colors.redAccent,
                    ),
                    SizedBox(height: 10),
                    Text("Electricity\n"),
                    //const Padding(padding: EdgeInsets.all(10))
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const <Widget>[
                    Icon(
                      Icons.credit_card,
                      color: Colors.redAccent,
                    ),
                    SizedBox(height: 10),
                    Text("Credit Card\n    Bill"),
                    //const Padding(padding: EdgeInsets.all(10))
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Recentpayments extends StatefulWidget {
  const Recentpayments({
    Key? key,
  }) : super(key: key);

  @override
  State<Recentpayments> createState() => _RecentpaymentsState();
}

class _RecentpaymentsState extends State<Recentpayments> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.all(30.0),
      //height: 150,
      //width: 400,
      height: MediaQuery.of(context).size.height * 0.2,
      // width: MediaQuery.of(context).size.width/2,
      //color: Colors.transparent,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        //border: Border.all(color: Colors.black),
        boxShadow: [
          BoxShadow(
            color: Colors.transparent.withOpacity(0.5), //color of shadow
            //spreadRadius: 5, //spread radius
            blurRadius: 10, // blur radius
            offset: const Offset(1, 2), // changes position of shadow
          ),
        ],
      ),
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              const SizedBox(
                width: 20,
              ),
              const Expanded(
                child: Text(
                  'Recent Payments',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              SizedBox(
                height: 30,
                child: ElevatedButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    // minimumSize: const Size(1,1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: Row(
                    children: const <Widget>[
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'See All',
                        style: TextStyle(color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_right_alt_sharp,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                backgroundColor: Colors.yellowAccent[100],
              ),
              CircleAvatar(
                backgroundColor: Colors.deepPurpleAccent[100],
              ),
              CircleAvatar(
                backgroundColor: Colors.redAccent[100],
              ),
              CircleAvatar(
                backgroundColor: Colors.greenAccent[100],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              Text('Chaplian'),
              Text('Brian'),
              Text('Fleece'),
              Text('Fergus')
            ],
          ),
        ],
      ),
    );
  }
}
