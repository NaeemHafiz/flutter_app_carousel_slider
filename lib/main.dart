import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_carousel_slider/commonwidget.dart';

import 'RaisedGradientButton.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: ListViewDemo(),
  ));
}

class ListViewDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Demo'),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  'Compaigns Closing Soon',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2,
                child: buidList(),
              ),
              Container(
                  height: MediaQuery.of(context).size.height / 3,
                  margin: EdgeInsets.only(top: 10.0),
                  child: Column(
                    children: [
                      Text(
                        'Our Featured',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
              Container(
                margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                child: Text(
                  'Explore Campaigns',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 4,
                child: buidListCompaign(),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 9,
                child: buildBannerCompaign(),
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Text(
                  'SOLD OUT',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
              ),
//              Container(
//                height: MediaQuery.of(context).size.height / 4,
//                child: buidListSoldoutCar(),
//              ),
//              Container(
//                height: MediaQuery.of(context).size.height / 8,
//                child: buildSoldoutBannerCompaign(),
//              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Text(
                  'WINNERS',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 3,
                child: buidWinnerList(),
              ),
              Container(
                child: buidWishList(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buidList() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 8,
      itemBuilder: (context, index) {
        return listWidget(context);
      },
    );
  }

  Widget buidWinnerList() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 8,
      itemBuilder: (context, index) {
        return listWidgetWinner(context);
      },
    );
  }

  Widget buidListCompaign() {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: 8,
      itemBuilder: (context, index) {
        return listWidgetCompaign(context);
      },
    );
  }

  Widget listWidget(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5.0,
      child: Container(
        padding: EdgeInsets.all(6.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: CommonWidget.getSvgImage(
                  'assets/images/shopping_bag.svg', 150, 150),
            ),
            Container(
              child: CommonWidget.getTextStyle(
                  'Idealz App for shopping', 15.0, FontWeight.bold, Colors.red),
            ),
            Container(
              child: CommonWidget.getTextStyle(
                  'Lorem Ipsum is dummy', 10.0, FontWeight.bold, Colors.black),
            ),
            Container(
              child: CommonWidget.getTextStyle(
                  'Lorem Ipsum is dummy', 15.0, FontWeight.bold, Colors.black),
            ),
            Container(
              margin: EdgeInsets.only(top: 5.0),
              width: MediaQuery.of(context).size.width / 3,
              child: Divider(
                height: 2.0,
                thickness: 3.0,
                color: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget listWidgetCompaign(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 5.0,
      child: Center(
        child: Column(
          children: [
            Container(
              child: Image.asset('assets/images/image.png',
                  height: 300, width: 250),
            ),
            Container(
              child: Text(
                'Buy aH2H Hoodie for:AED 825.0',
                style: TextStyle(color: Color(0xff6E6E6E), fontSize: 12),
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Buy aH2H Hoodie for: ',
                      style: TextStyle(color: Color(0xff6E6E6E))),
                  Text('AED:825.00',
                      style: TextStyle(
                          color: Color(0xff4999F8),
                          fontWeight: FontWeight.bold,
                          fontSize: 20)),
                ],
              ),
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 170,
                    height: 55,
                    margin: EdgeInsets.all(8.0),
                    child: RaisedGradientButton(
                        child: Text(
                          'Prize Details',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        gradient: LinearGradient(
                          colors: <Color>[Color(0xff0A2E58), Color(0xff0F4482)],
                        ),
                        onPressed: () {
                          print('button clicked');
                        }),
//                      RaisedButton(
//                        shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(10)),
//                        textColor: Colors.white,
//                        color: Color(0xff0C386B),
//                        child: Text('Prize Details'),
//                        onPressed: () {},
//                      ),
                  ),
                  Container(
                    width: 170,
                    height: 55,
                    child: RaisedGradientButton(
                        child: Text(
                          'Add to Cart',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        gradient: LinearGradient(
                          colors: <Color>[Color(0xff1C6FD2), Color(0xff1D70D4)],
                        ),
                        onPressed: () {
                          print('button clicked');
                        }),
//                      RaisedButton(
//                        shape: RoundedRectangleBorder(
//                            borderRadius: BorderRadius.circular(10)),
//                        textColor: Colors.white,
//                        color: Color(0xff1F72D6),
//                        child: Text('Add to Cart'),
//                        onPressed: () {},
//                      ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                'In Stock: 820 out of 1875',
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }

  buildBannerCompaign() {
    return Container(
      margin: EdgeInsets.only(top: 7.0),
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.red[500],
          ),
          color: Color(0xff61AB2D),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: ListTile(
        leading: Image.asset('assets/images/image.png', height: 100, width: 40),
        trailing: Icon(Icons.home),
        title: Text(
          'Lorem Ipsum is simply dummy text',
          style: TextStyle(color: Colors.white),
        ),
        subtitle:
            Text('See Your ipoints', style: TextStyle(color: Colors.white)),
      ),
    );
  }

//  buidListSoldoutCar() {
//    return ListView.builder(
//      itemCount: 8,
//      itemBuilder: (context, index) {
//        return listWidgetSoldout(context);
//      },
//    );
//  }

//  listWidgetSoldout(BuildContext context) {
//    return Card(
//      shape: RoundedRectangleBorder(
//        borderRadius: BorderRadius.circular(10),
//      ),
//      elevation: 5.0,
//      child: Container(
//        child: Column(
//          children: [
//            Row(
//              mainAxisAlignment: MainAxisAlignment.end,
//              children: [Icon(Icons.home)],
//            ),
//            Container(
//              child: Image.asset('assets/images/image.png',
//                  height: 100, width: 40),
//            ),
//            Container(
//              child: Center(
//                child: Text('But aH2H Hoodie for:AED 825.0'),
//              ),
//            ),
//            Container(
//              margin: EdgeInsets.only(top: 5.0),
//              padding: EdgeInsets.all(5.0),
//              child: Text('But aH2H Hoodie for:AED 825.0'),
//            ),
//            Container(
//              margin: EdgeInsets.all(5.0),
//              width: 330,
//              height: 60,
//              decoration: BoxDecoration(
//                color: Color(0xffEFEFEF),
//                borderRadius: BorderRadius.circular(10),
//              ),
//              child: Center(
//                  child: Text(
//                'Draw Date:27 August 2020',
//                style: TextStyle(
//                    color: Color(0xff9E9E9E), fontWeight: FontWeight.bold),
//              )),
//            ),
//            Container(
//              margin: EdgeInsets.all(8.0),
//              child: Center(
//                  child: Text(
//                'SOLD OUT',
//                style: TextStyle(
//                    fontSize: 20.0,
//                    fontWeight: FontWeight.bold,
//                    color: Color(0xffEB3221)),
//              )),
//            )
//          ],
//        ),
//      ),
//    );
//  }

//  buildSoldoutBannerCompaign() {
//    return Container(
//      margin: EdgeInsets.only(top: 7.0),
//      decoration: BoxDecoration(
//        border: Border.all(
//          color: Colors.red[500],
//        ),
//        color: Color(0xff1394A9),
//        borderRadius: BorderRadius.all(Radius.circular(10)),
//      ),
//      child: ListTile(
//        leading: Image.asset('assets/images/image.png', height: 100, width: 40),
//        trailing: Icon(Icons.home),
//        title: Text(
//          'Earn 100 points and start shopping',
//          style: TextStyle(color: Colors.white),
//        ),
//        subtitle: Text('Click here to get Started',
//            style: TextStyle(color: Colors.white)),
//      ),
//    );
//  }

  Widget listWidgetWinner(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 5.0,
      child: Container(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.fromBorderSide(
                      BorderSide(color: Colors.blue, width: 1.0)),
                  borderRadius: BorderRadius.only(
                    topLeft: const Radius.circular(30.0),
                    topRight: const Radius.circular(30.0),
                  ),
                  color: Color(0xff664B7E)),
              width: 400.0,
              height: 50.0,
              child: Center(
                child: Text(
                  'Congratulations',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              child: Center(
                child: Text(
                  'Nadeem Qadir',
                  style: TextStyle(
                      color: Color(0xff1477EE),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 20.0),
                child: Row(
                  children: [
                    Text('on Winning '),
                    Text(
                      'Samsung 75 Flat QLED TV',
                      style: TextStyle(
                          color: Color(0xff5A5A5A),
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                  ],
                )),
            Container(
                margin: EdgeInsets.only(top: 20.0, left: 70.0),
                child: Row(
                  children: [
                    Image.asset('assets/images/image.png',
                        height: 100, width: 100),
                    CircleAvatar(
                      radius: 55,
                      backgroundColor: Color(0xffFDCF09),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage('assets/images/profile.jpg'),
                      ),
                    )
                  ],
                )),
            Container(
              margin: EdgeInsets.only(top: 15.0, left: 68.0),
              child: Row(
                children: [
                  Text('Coupon no. ',
                      style: TextStyle(
                          color: Color(0xff6E6E6E),
                          fontWeight: FontWeight.bold,
                          fontSize: 15)),
                  Text('EL-00290-00061-0',
                      style: TextStyle(
                          color: Color(0xff4293EE),
                          fontWeight: FontWeight.bold,
                          fontSize: 15))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 5.0),
              child: Text(
                'Announced: 10:56 AM,14 September,2020',
                style: TextStyle(
                    color: Color(0xff6E6E6E), fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buidWishList() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
            flex: 1,
            child: Container(
              width: 300,
              height: 150,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 4,
                child: Container(
                    padding: EdgeInsets.all(20),
                    child: Image.asset(
                      'assets/images/image.png',
                    )),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Container(
              margin: EdgeInsets.only(top: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hashtag Hoodie',
                    style: TextStyle(
                        color: Color(0xff616161), fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Fully Furnished Apartment',
                    style: TextStyle(
                        color: Color(0xff616161), fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'USD 210.00',
                    style: TextStyle(
                        color: Color(0xff1477EE),
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 50.0),
                      child: LinearProgressIndicator(
                          backgroundColor: Color(0xffFDCF09))),
                  Container(
                    child: Text(
                      '569 sold out of 1980',
                      style: TextStyle(
                          color: Color(0xff000000),
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 20.0),
                    width: 30,
                    height: 30,
                    child: Icon(Icons.home, size: 20),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 70.0),
                    width: 30,
                    height: 30,
                    child: Icon(Icons.home, size: 20),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFFe0f2f1)),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
