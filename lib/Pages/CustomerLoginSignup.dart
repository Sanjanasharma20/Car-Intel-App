import 'package:flutter/material.dart';

import '../Widgets/LoginTextField.dart';
import '../Constants.dart';

class CustomerLoginSignup extends StatefulWidget {
  @override
  _CustomerLoginSignupState createState() => _CustomerLoginSignupState();
  final double horizontalPadding = 20;
  final double verticalTextBoxPadding = 15;
  final double topLeftRadius = 0;
  final double formContainerRadius = 30;

  final Color activatedColor = Constants.buttonActivatedColor;
  final Color deactivatedColor = Constants.buttonDeactivatedColor;

  // ========================================================================
  // IMP: Uncomment below block if passing in pointers to onPressed functions
  // IMP: And comment out function labelled FUNC1, FUNC2, FUNC3
  // final onLoginPressed;
  // final onSignupPressed;
  // final onGoogleSiginPressed;

  // CustomerLoginSignup({
  //   @required this.onLoginPressed,
  //   @required this.onSignupPressed,
  //   @required this.onGoogleSigninPressed
  // });

}

class _CustomerLoginSignupState extends State<CustomerLoginSignup> {
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();

  // FUNC 1
  void onLoginPressed() {
    String _email = emailController.text;
    String _pass = passwordController.text;

    // TODO
  }

  // FUNC 2
  void onSignupPressed() {
    String _email = emailController.text;
    String _phone = phoneController.text;
    String _pass = passwordController.text;

    // TODO
  }

  // FUNC 3
  void onGoogleSigninPressed() {}

  bool _loginActivated = true;
  void onLoginTabTapped() {
    setState(() {
      _loginActivated = true;
    });
  }

  void onSignupTabTapped() {
    setState(() {
      _loginActivated = false;
    });
  }

  String getEmail() {
    return emailController.text;
  }

  String getPhoneNo() {
    return phoneController.text;
  }

  String getPassword() {
    return passwordController.text;
  }

  Widget topButton({@required String title, @required onTap, bool activator}) {
    return FlatButton(
      onPressed: onTap,
      splashColor: Color(0x00FFFFFF),
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
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 375,
                    decoration: BoxDecoration(
                        color: Color(0xAAFFFFFF),
                        borderRadius: BorderRadius.circular(
                          widget.formContainerRadius,
                        )),
                    child: Column(
                      children: <Widget>[
                        Padding(padding: EdgeInsets.only(top: 30)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            topButton(
                              title: 'Log In',
                              onTap: () => onLoginTabTapped(),
                              activator: _loginActivated,
                            ),
                            Padding(padding: EdgeInsets.only(left: 20)),
                            topButton(
                              title: 'Sign Up',
                              onTap: () => onSignupTabTapped(),
                              activator: !_loginActivated,
                            ),
                          ],
                        ),
                        Padding(padding: EdgeInsets.only(top: 20)),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: widget.horizontalPadding,
                            vertical: widget.verticalTextBoxPadding,
                          ),
                          child: LoginTextField(
                            stateController: emailController,
                            hintText: _loginActivated
                                ? 'Email or Phone No.'
                                : 'Email',
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        !_loginActivated
                            ? Padding(
                                padding: EdgeInsets.symmetric(
                                  horizontal: widget.horizontalPadding,
                                  vertical: widget.verticalTextBoxPadding,
                                ),
                                child: LoginTextField(
                                  stateController: phoneController,
                                  hintText: 'Phone No.',
                                  keyboardType: TextInputType.phone,
                                ),
                              )
                            : Padding(padding: EdgeInsets.zero),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: widget.horizontalPadding,
                            vertical: widget.verticalTextBoxPadding,
                          ),
                          child: LoginTextField(
                            stateController: passwordController,
                            hintText: 'Password',
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 20,
                            bottom: 30,
                          ),
                          child: MaterialButton(
                            elevation: 8,
                            onPressed: _loginActivated
                                ? onLoginPressed
                                : onSignupPressed,
                            color: Theme.of(context).buttonColor,
                            child: Container(
                              width: 120,
                              height: 50,
                              child: Row(
                                children: [
                                  Text(
                                    _loginActivated ? 'Log In' : 'Sign Up',
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
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: MaterialButton(
                      onPressed: onGoogleSigninPressed,
                      elevation: 8,
                      color: Colors.white,
                      child: Container(
                        width: 220,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            // Icon(Icons.g_translate),
                            // Spacer(),
                            Text('Sign in with Google'),
                          ],
                        ),
                      ),
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
