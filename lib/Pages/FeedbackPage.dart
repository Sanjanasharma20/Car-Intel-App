import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../Widgets/LoginTextField.dart';
import '../Widgets/OptionButton.dart';
import '../Constants.dart';

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();

  final double horizontalPadding = 20;
  final double verticalTextBoxPadding = 15;
  final double topLeftRadius = 0;
  final double formContainerRadius = 30;

  final TextEditingController textFeedbackController = TextEditingController();

  // IMP: 0: positive, 1: negative, 2: neutral
  int transparency_state = 2;
  int service_state = 2;
  int support_state = 2;
  int pickup_state = 2;

  double rating = 0;

  // ========================================================================
  // IMP: Uncomment below block if passing in pointers to onPressed functions
  // IMP: comment out function labelled FUNC1
  // final onSubmitPressed;
  // IMP: comment out function labelled FUNC2
  // final onBackPressed;

  // CustomerLoginSignup({
  //   @required this.onSubmitPressed,
  //   @required this.onBackPressed,
  // });
}

class _FeedbackPageState extends State<FeedbackPage> {
  //FUNC1
  void onSubmitPressed() {
    // Ratings in variable 'widget.rating'
    String textFeedback = widget.textFeedbackController.text;

    // TODO
  }

  //FUNC2
  void onBackPressed() {
    //TODO
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
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(widget.topLeftRadius),
          ),
          color: Theme.of(context).backgroundColor,
        ),
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 30)),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xEEEEEEEE),
                    borderRadius: BorderRadius.circular(
                      widget.formContainerRadius,
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.only(top: 10)),
                      Row(
                        children: <Widget>[
                          Spacer(),
                          IconButton(
                            icon: Icon(Icons.arrow_back_ios),
                            onPressed: onBackPressed,
                            iconSize: 28,
                          ),
                          Spacer(),
                          Text(
                            'Rate your Experience',
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                      // Spacer(),
                      Padding(padding: EdgeInsets.only(top: 10)),
                    ],
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(top: 40)),
              RatingBar(
                initialRating: widget.rating,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                ratingWidget: RatingWidget(
                  full: Icon(Icons.star, color: Colors.yellow),
                  half: Icon(Icons.star_half_outlined, color: Colors.yellow),
                  empty: Icon(Icons.star_border_outlined, color: Colors.yellow),
                ),
                itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                onRatingUpdate: (r) {
                  widget.rating = r;
                },
              ),
              Padding(padding: EdgeInsets.only(top: 40)),
              Column(
                children: [
                  Row(
                    children: [
                      Spacer(),
                      OptionButton('Transparency', 170, () {
                        setState(() {
                          widget.transparency_state =
                              (widget.transparency_state + 1) % 3;
                        });
                      }, widget.transparency_state),
                      Spacer(),
                      OptionButton('Service', 100, () {
                        setState(() {
                          widget.service_state = (widget.service_state + 1) % 3;
                        });
                      }, widget.service_state),
                      Spacer(),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 40)),
                  Row(
                    children: [
                      Spacer(),
                      OptionButton('Support', 100, () {
                        setState(() {
                          widget.support_state = (widget.support_state + 1) % 3;
                        });
                      }, widget.support_state),
                      Spacer(),
                      OptionButton('Pickup/Delivery', 170, () {
                        setState(() {
                          widget.pickup_state = (widget.pickup_state + 1) % 3;
                        });
                      }, widget.pickup_state),
                      Spacer(),
                    ],
                  ),
                  Padding(padding: EdgeInsets.only(top: 100)),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 28),
                    child: Container(
                      child: Material(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                        child: TextField(
                          maxLines: 10,
                          decoration: InputDecoration(
                            hintText: 'Tell us how to serve you better',
                            filled: true,
                            fillColor: Colors.white,
                            border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20)),
                            ),
                          ),
                          controller: widget.textFeedbackController,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(padding: EdgeInsets.only(top: 50)),
              MaterialButton(
                elevation: 8,
                onPressed: onSubmitPressed,
                color: Constants.buttonActivatedColor,
                child: Container(
                  width: 120,
                  height: 50,
                  child: Row(
                    children: [
                      Text(
                        'Submit',
                        style: TextStyle(fontSize: 22, color: Colors.white),
                      ),
                      Spacer(),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                      Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
