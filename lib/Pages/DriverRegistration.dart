import 'package:flutter/material.dart';

import '../Widgets/LoginTextField.dart';
import '../Constants.dart';

class DriverRegistration extends StatefulWidget {
  @override
  _DriverRegistrationState createState() => _DriverRegistrationState();
  final double horizontalPadding = 20;
  final double verticalTextBoxPadding = 15;
  final double topLeftRadius = 0;
  final double formContainerRadius = 30;

  final Color activatedColor = Constants.buttonActivatedColor;
  final Color deactivatedColor = Constants.buttonDeactivatedColor;

  // ========================================================================
  // IMP: Uncomment below block if passing in pointers to onPressed function
  // IMP: And comment out function labelled FUNC1
  // final onLoginPressed;
  // final onSignupPressed;
  // final onGoogleSiginPressed;

  // CustomerLoginSignup({
  //   @required this.onRegisterPressed,
  // });
}

class _DriverRegistrationState extends State<DriverRegistration> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final aadharController = TextEditingController();
  final localAddressController = TextEditingController();
  final permanentAddressController = TextEditingController();
  final batchController = TextEditingController();
  final licenceNoController = TextEditingController();
  DateTime expiryDate = DateTime.now();

  bool _isDateSelected = false;

  // FUNC1
  void onRegisterPressed() {
    String _name = nameController.text;
    String _phone = phoneController.text;
    String _aadhar = aadharController.text;
    String _localAddress = localAddressController.text;
    String _permanentAddress = localAddressController.text;
    String _batch = batchController.text;
    String _expiryDate = expiryDate.toString();

    // TODO: Implement on pressed below
  }

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
              color:
                  activator ? widget.activatedColor : widget.deactivatedColor,
              width: 3,
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: expiryDate,
        firstDate: DateTime.now(),
        lastDate: DateTime(3000));
    if (picked != null && picked != expiryDate)
      setState(() {
        expiryDate = picked;
      });

    _isDateSelected = true;
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
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xAAFFFFFF),
                  borderRadius: BorderRadius.circular(
                    widget.formContainerRadius,
                  )),
              child: Column(
                children: <Widget>[
                  Padding(padding: EdgeInsets.only(top: 30)),
                  topButton(
                    title: 'Driver Registration',
                    activator: true,
                  ),
                  // Padding(padding: EdgeInsets.only(top: 100)),
                  Container(
                    width: 375,
                    height: 500,
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          Padding(padding: EdgeInsets.only(top: 20)),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: widget.horizontalPadding,
                              vertical: widget.verticalTextBoxPadding,
                            ),
                            child: LoginTextField(
                              stateController: nameController,
                              hintText: 'Full Name',
                              keyboardType: TextInputType.name,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: widget.horizontalPadding,
                              vertical: widget.verticalTextBoxPadding,
                            ),
                            child: LoginTextField(
                              stateController: phoneController,
                              hintText: 'Phone No.',
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: widget.horizontalPadding,
                              vertical: widget.verticalTextBoxPadding,
                            ),
                            child: LoginTextField(
                              stateController: aadharController,
                              hintText: 'Aadhar No.',
                              keyboardType: TextInputType.number,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: widget.horizontalPadding,
                              vertical: widget.verticalTextBoxPadding,
                            ),
                            child: LoginTextField(
                              stateController: localAddressController,
                              hintText: 'Local Address',
                              keyboardType: TextInputType.streetAddress,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: widget.horizontalPadding,
                              vertical: widget.verticalTextBoxPadding,
                            ),
                            child: LoginTextField(
                              stateController: permanentAddressController,
                              hintText: 'Permanent Address',
                              keyboardType: TextInputType.streetAddress,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: widget.horizontalPadding,
                              vertical: widget.verticalTextBoxPadding,
                            ),
                            child: LoginTextField(
                              stateController: batchController,
                              hintText: 'Batch',
                              keyboardType: TextInputType.text,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: widget.horizontalPadding,
                              vertical: widget.verticalTextBoxPadding,
                            ),
                            child: LoginTextField(
                              stateController: licenceNoController,
                              hintText: 'Driving Licence No.',
                              keyboardType: TextInputType.text,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: widget.horizontalPadding,
                              vertical: widget.verticalTextBoxPadding,
                            ),
                            child: Container(
                              child: RaisedButton(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    side: BorderSide(
                                      width: 1,
                                      color: Colors.grey[600],
                                    )),
                                elevation: 8,
                                onPressed: () => _selectDate(context),
                                color: Colors.white,
                                child: Container(
                                  width: double.infinity,
                                  height: 57.5,
                                  child: Row(
                                    children: [
                                      Text(
                                        _isDateSelected
                                            ? expiryDate
                                                .toString()
                                                .substring(0, 10)
                                            : 'Driving Licence Expiry Date',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: _isDateSelected
                                                ? Colors.black
                                                : Colors.grey[600],
                                            fontWeight: FontWeight.normal),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.calendar_today,
                                        color: Colors.grey[600],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(padding: EdgeInsets.only(bottom: 20)),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 20,
                      bottom: 30,
                    ),
                    child: MaterialButton(
                      elevation: 8,
                      onPressed: onRegisterPressed,
                      color: Theme.of(context).buttonColor,
                      child: Container(
                        width: 120,
                        height: 50,
                        child: Row(
                          children: [
                            Text(
                              'Register',
                              style: TextStyle(fontSize: 22),
                            ),
                            Spacer(),
                            Icon(Icons.arrow_forward),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
