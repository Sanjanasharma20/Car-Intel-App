import 'package:flutter/material.dart';

import '../Constants.dart';

class DriverDetails extends StatefulWidget {
  @override
  _DriverDetailsState createState() => _DriverDetailsState();

  double containerRadius = 30;
  double cardMargin = 10;
}

class _DriverDetailsState extends State<DriverDetails> {
  // Connect following variables with database (Uncomment below)
  // String name, ph_no, aadhar, local_addr, perm_addr, batch, licence;
  // DateTime expiry_date;

  // Dummy Assignments (Comment below)
  String name = 'John Doe';
  String ph_no = '+91 12345 67890';
  String aadhar = '1234 5678 9000';
  String local_addr = 'H. No. 123, Neemrana';
  String perm_addr = 'H. No. 321, Alwar';
  String batch = '1234';
  String licence = '1234 5678';
  DateTime expiry_date = DateTime.now();

  Widget topButton({@required String title, bool activator}) {
    return Container(
      child: Container(
        padding: EdgeInsets.only(bottom: 10),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Constants.buttonActivatedColor,
              width: 3,
            ),
          ),
        ),
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
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xAAFFFFFF),
                  borderRadius: BorderRadius.circular(
                    widget.containerRadius,
                  )),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 30)),
                  topButton(
                    title: 'Driver Details',
                    activator: true,
                  ),
                  Container(
                    width: 375,
                    height: 700,
                    padding: EdgeInsets.only(bottom: 20),
                    child: ListView(
                      children: [
                        Card(
                          margin: EdgeInsets.all(widget.cardMargin),
                          child: ListTile(
                            leading: Icon(
                              Icons.person,
                              size: 60,
                              color: Colors.green,
                            ),
                            title: Text('\n$name'),
                            subtitle: Text('Name'),
                            trailing: Icon(Icons.more_vert),
                            isThreeLine: true,
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.all(widget.cardMargin),
                          child: ListTile(
                            leading: Icon(
                              Icons.phone,
                              size: 60,
                              color: Colors.green,
                            ),
                            title: Text('\n$ph_no'),
                            subtitle: Text('Phone No.'),
                            trailing: Icon(Icons.more_vert),
                            isThreeLine: true,
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.all(widget.cardMargin),
                          child: ListTile(
                            leading: Icon(
                              Icons.perm_identity_outlined,
                              size: 60,
                              color: Colors.green,
                            ),
                            title: Text('\n$aadhar'),
                            subtitle: Text('Aadhar No.'),
                            trailing: Icon(Icons.more_vert),
                            isThreeLine: true,
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.all(widget.cardMargin),
                          child: ListTile(
                            leading: Icon(
                              Icons.local_post_office,
                              size: 60,
                              color: Colors.green,
                            ),
                            title: Text('\n$local_addr'),
                            subtitle: Text('Local Address'),
                            trailing: Icon(Icons.more_vert),
                            isThreeLine: true,
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.all(widget.cardMargin),
                          child: ListTile(
                            leading: Icon(
                              Icons.house,
                              size: 60,
                              color: Colors.green,
                            ),
                            title: Text('\n$perm_addr'),
                            subtitle: Text('Permanent Address'),
                            trailing: Icon(Icons.more_vert),
                            isThreeLine: true,
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.all(widget.cardMargin),
                          child: ListTile(
                            leading: Icon(
                              Icons.batch_prediction,
                              size: 60,
                              color: Colors.green,
                            ),
                            title: Text('\n$batch'),
                            subtitle: Text('Batch'),
                            trailing: Icon(Icons.more_vert),
                            isThreeLine: true,
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.all(widget.cardMargin),
                          child: ListTile(
                            leading: Icon(
                              Icons.car_repair,
                              size: 60,
                              color: Colors.green,
                            ),
                            title: Text('\n$licence'),
                            subtitle: Text('Driving Licence No.'),
                            trailing: Icon(Icons.more_vert),
                            isThreeLine: true,
                          ),
                        ),
                        Card(
                          margin: EdgeInsets.all(widget.cardMargin),
                          child: ListTile(
                            leading: Icon(
                              Icons.calendar_today,
                              size: 60,
                              color: Colors.green,
                            ),
                            title: Text(
                                '\n${expiry_date.toString().substring(0, 7)}'),
                            subtitle: Text('Driving Licence Expiry Date'),
                            trailing: Icon(Icons.more_vert),
                            isThreeLine: true,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
