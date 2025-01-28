import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RegisterPageState();
  }
}

class _RegisterPageState extends State<RegisterPage> {
 
  double? _deviceHeight, _deviceWidth;

  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();

  String? _name, _email, _password;

    @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: _deviceWidth! * 0.05,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _titleWidget(),
                // _profileImageWidget(),
                // _registrationForm(),
                _registerButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

    Widget _titleWidget() {
    return const Text(
      "Create an Account",
      style: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  

 
    Widget _registerButton() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30), // Add rounded corners
      child: MaterialButton(
        onPressed: (){},
        minWidth: _deviceWidth! * 0.70,
        height: _deviceHeight! * 0.06,
        color: Colors.red,
        child: const Text(
          "Register",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
