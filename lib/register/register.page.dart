import 'package:flutter/material.dart';
import 'package:simplescrumflutter/colors.dart';
import 'package:simplescrumflutter/widgets/textfield.widget.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage();

  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  BuildContext _context;

  _navigateToLogin() {
    Navigator.pushNamedAndRemoveUntil(context, '/login', (_) => false);
  }

  @override
  Widget build(BuildContext context) {
    _context = context;
    return Scaffold(
      appBar: null,
      body: Container(
          decoration: BoxDecoration(color: backgroundWhiteColor),
          child: Center(
              child: SingleChildScrollView(
            child: SafeArea(child: Center(child: _card())),
          ))),
    );
  }

  Widget _card() {
    return Container(
      height: 552,
      width: 500,
      padding: EdgeInsets.all(30),
      child: Container(
        decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.all(Radius.circular(4))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[_cardHeader(), _cardContent()],
        ),
      ),
    );
  }

  Widget _cardHeader() {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: backgroundWhiteColor,
                  width: 2,
                  style: BorderStyle.solid))),
      child: Text(
        'Register',
        style: Theme.of(_context).textTheme.display1,
      ),
    );
  }

  Widget _cardContent() {
    return Container(
        padding: EdgeInsets.all(20),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Textfield(hint: 'Email', isPassword: false),
              Textfield(hint: 'Name', isPassword: false),
              Textfield(hint: 'Password', isPassword: true),
              Textfield(hint: 'Repeat password', isPassword: true),
              _button(),
              _registerLink()
            ],
          ),
        ));
  }

  Widget _button() {
    return RaisedButton(
      color: purpleColor,
      onPressed: () => {},
      child: Container(
          height: 50,
          child: Center(
              child: Text('Register', style: Theme.of(context).textTheme.button))),
    );
  }

  Widget _registerLink() {
    return Container(
        margin: EdgeInsets.only(top: 25),
        child: InkWell(
          onTap: _navigateToLogin,
            child: Center(
          child: Text('Click here to register',
              style: Theme.of(context)
                  .textTheme
                  .display1
                  .copyWith(fontSize: 18, color: greyColor)),
        )));
  }
}
