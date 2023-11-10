import 'package:flutter/material.dart';

import '../Constants.dart';

class MyBookings extends StatefulWidget {
  @override
  _MyBookingsState createState() => _MyBookingsState();

  double containerRadius = 30;
  double cardMarginHorizontal = 15;
  double cardMarginVertical = 10;
  double cardBorderRadius = 20;
  double imageHeight = 55;

  // Connect following with the database
  String pathToImage = 'images/car.png';
  String loc_from = 'Neemrana';
  String loc_to = "Delhi";
  DateTime date_from = DateTime(2021, 4, 4, 18, 00);
  DateTime date_to = DateTime(2021, 4, 5, 14, 30);
  String bookingID = '1234ABCD';
  String cost = '₹10,000';
}

class _MyBookingsState extends State<MyBookings> {
  Widget bookingCard(
      {@required pathToImage,
      @required loc_from,
      @required loc_to,
      @required date_from,
      @required date_to,
      @required bookingID,
      @required cost}) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(widget.cardBorderRadius),
        color: Colors.white,
      ),
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 8),
      padding: EdgeInsets.only(top: 20, bottom: 20),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Constants.buttonActivatedColor)),
            margin: EdgeInsets.symmetric(
                vertical: widget.cardMarginVertical,
                horizontal: widget.cardMarginHorizontal),
            padding: EdgeInsets.only(top: 20, bottom: 20),
            // margin: EdgeInsets.symmetric(vertical: widget.cardMarginVertical),
            child: Row(
              children: [
                Spacer(),
                Image.asset(
                  pathToImage,
                  height: widget.imageHeight,
                  fit: BoxFit.contain,
                ),
                Spacer(),
                Text(
                  loc_from,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                Icon(Icons.arrow_right_alt),
                Text(
                  loc_to,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                Spacer(),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Constants.buttonActivatedColor)),
            margin: EdgeInsets.symmetric(
                vertical: widget.cardMarginVertical,
                horizontal: widget.cardMarginHorizontal),
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                Spacer(),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Text(
                      'Time\nFrom',
                      style: TextStyle(color: Colors.grey),
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      '${date_from.toString().substring(11, 16)} \n ${date_from.toString().substring(0, 11)}',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Text(
                      'Time\nTo',
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      '${date_to.toString().substring(11, 16)} \n ${date_to.toString().substring(0, 11)}',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
                border: Border.all(color: Constants.buttonActivatedColor)),
            margin: EdgeInsets.symmetric(
                vertical: widget.cardMarginVertical,
                horizontal: widget.cardMarginHorizontal),
            padding: EdgeInsets.only(bottom: 20),
            child: Row(
              children: [
                Spacer(),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Text(
                      'Booking ID',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      '${bookingID}',
                      textAlign: TextAlign.left,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                Spacer(),
                Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 20)),
                    Text(
                      'Cost',
                      style: TextStyle(color: Colors.grey),
                      textAlign: TextAlign.center,
                    ),
                    Padding(padding: EdgeInsets.only(top: 10)),
                    Text(
                      '${cost}',
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    )
                  ],
                ),
                Spacer(),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0,
        backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
        ),
        height: double.infinity,
        child: Center(
          child: Container(
            width: 375,
            height: 700,
            decoration: BoxDecoration(
                color: Color(0xAAFFFFFF),
                borderRadius: BorderRadius.circular(
                  widget.containerRadius,
                )),
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 30)),
                Constants.topButton(title: 'My Bookings', activator: true),
                Padding(padding: EdgeInsets.only(top: 30)),
                Container(
                  height: 550,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        bookingCard(
                            pathToImage: widget.pathToImage,
                            loc_from: widget.loc_from,
                            loc_to: widget.loc_to,
                            date_from: widget.date_from,
                            date_to: widget.date_to,
                            bookingID: widget.bookingID,
                            cost: widget.cost),
                        bookingCard(
                            pathToImage: widget.pathToImage,
                            loc_from: widget.loc_from,
                            loc_to: widget.loc_to,
                            date_from: widget.date_from,
                            date_to: widget.date_to,
                            bookingID: widget.bookingID,
                            cost: widget.cost),
                        bookingCard(
                            pathToImage: widget.pathToImage,
                            loc_from: widget.loc_from,
                            loc_to: widget.loc_to,
                            date_from: widget.date_from,
                            date_to: widget.date_to,
                            bookingID: widget.bookingID,
                            cost: widget.cost),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
