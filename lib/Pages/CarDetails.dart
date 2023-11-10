import 'package:flutter/material.dart';

import '../Constants.dart';

class CarDetails extends StatefulWidget {
  @override
  _CarDetailsState createState() => _CarDetailsState();

  double containerRadius = 30;
  double cardMarginHorizontal = 5;
  double cardMarginVertical = 8;
  double imageHeight = 150;

  // Connect following with database
  String pathToImage = 'images/car.png';
  String model = 'Honda Civic 2019 R3';
  String type = 'SUV';
  String cost = '₹2000 / Day';
  int seats = 4;
}

class _CarDetailsState extends State<CarDetails> {
  Widget carCard(
      {@required pathToImage,
      @required model,
      @required type,
      @required cost,
      @required seats,
      @required Function onBookPressed}) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.symmetric(
          vertical: widget.cardMarginVertical,
          horizontal: widget.cardMarginHorizontal),
      child: Column(
        children: [
          ListTile(
            leading: Image.asset(
              pathToImage,
              height: widget.imageHeight,
              fit: BoxFit.contain,
            ),
            title: Text('\n$model'),
            subtitle: Text('Model'),
            trailing: Icon(Icons.more_vert),
            isThreeLine: true,
          ),
          Row(
            children: [
              Container(
                width: 100,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Constants.buttonActivatedColor),
                ),
                child: Column(
                  children: [
                    Text(
                      'Type:',
                      style: TextStyle(
                        color: Constants.buttonActivatedColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(3)),
                    Text('$type')
                  ],
                ),
              ),
              Spacer(),
              Container(
                width: 100,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Constants.buttonActivatedColor),
                ),
                child: Column(
                  children: [
                    Text(
                      'Seats:',
                      style: TextStyle(
                        color: Constants.buttonActivatedColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(3)),
                    Text('$seats')
                  ],
                ),
              ),
              Spacer(),
              Container(
                width: 100,
                margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                decoration: BoxDecoration(
                  border: Border.all(color: Constants.buttonActivatedColor),
                ),
                child: Column(
                  children: [
                    Text(
                      'Cost:',
                      style: TextStyle(
                        color: Constants.buttonActivatedColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    Padding(padding: EdgeInsets.all(3)),
                    Text('$cost')
                  ],
                ),
              )
            ],
          ),
          Padding(padding: EdgeInsets.only(bottom: 20)),
          MaterialButton(
            elevation: 8,
            onPressed: onBookPressed,
            color: Constants.buttonActivatedColor,
            child: Container(
              width: 100,
              height: 50,
              child: Center(
                child: Text(
                  'Book Now',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          Padding(padding: EdgeInsets.only(bottom: 20)),
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
                Constants.topButton(title: 'Cars', activator: true),
                Padding(padding: EdgeInsets.only(top: 30)),
                Container(
                  height: 550,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        carCard(
                          pathToImage: widget.pathToImage,
                          model: widget.model,
                          type: widget.type,
                          cost: widget.cost,
                          seats: widget.seats,
                          onBookPressed: () {},
                        ),
                        carCard(
                          pathToImage: widget.pathToImage,
                          model: widget.model,
                          type: widget.type,
                          cost: widget.cost,
                          seats: widget.seats,
                          onBookPressed: () {},
                        ),
                        carCard(
                          pathToImage: widget.pathToImage,
                          model: widget.model,
                          type: widget.type,
                          cost: widget.cost,
                          seats: widget.seats,
                          onBookPressed: () {},
                        ),
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
