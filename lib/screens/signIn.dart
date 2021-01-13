import 'package:flutter/material.dart';
import 'package:mookfood/components/logo.dart';
import 'package:mookfood/constant.dart';
import 'package:mookfood/providers/user_provider.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignIn extends StatefulWidget {
  SignIn({Key key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  // @override
  // void initState() {
  //   super.initState();
  //   checkUser();
  // }

  final formKey = GlobalKey<FormState>();
  String emailString, passwordString;

  Future<Null> routeToSerice() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('Name', emailString);
    Navigator.pushReplacementNamed(context, "/contentPage");

    // checkUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign In"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: [
              // Colors.white,
              Colors.green.shade100,
              Colors.yellow.shade100,
            ],
            radius: 1.0,
          ),
        ),
        child: Center(
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Logo(),
                  SizedBox(
                    height: 20,
                  ),
                  // ShowTitle("Mook Food"),
                  showUserName(),
                  SizedBox(
                    height: 20,
                  ),
                  showPassword(),
                  SizedBox(
                    height: 20,
                  ),
                  loginButton(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Container loginButton() {
    return Container(
      width: 250.0,
      child: RaisedButton(
        onPressed: () {
          formKey.currentState.save();
          print('email = $emailString , password = $passwordString');
          print('Log in');
          routeToSerice();
        },
        child: Text(
          'Log In',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        color: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
          side: BorderSide(color: Colors.yellow.shade50),
        ),
      ),
    );
  }

  Container showUserName() {
    return Container(
      width: 250,
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(color: Colors.blue.shade900),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.face,
            color: Colors.blue.shade900,
            size: 30.0,
          ),
          labelText: 'User',
          labelStyle: TextStyle(color: Colors.blue.shade900),
          border: new OutlineInputBorder(
            borderSide: new BorderSide(color: Colors.purple),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
        ),
        validator: (String value) {
          if (value.isEmpty || value == null) {
            return 'Please Fill Form';
          } else {
            return null;
          }
        },
        onSaved: (String value) {
          var userProvider = Provider.of<UserProvider>(context, listen: false);
          userProvider.setNickNameUser(value);
          emailString = value.trim();
        },
      ),
    );
  }

  Container showPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 80.0),
      child: TextFormField(
        obscureText: true,
        style: TextStyle(color: Colors.green),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: Colors.green,
            size: 30.0,
          ),
          labelText: 'Password',
          labelStyle: TextStyle(color: Colors.green),
          // helperText: 'Input your password',
          // helperStyle: TextStyle(color: Colors.green),
          border: new OutlineInputBorder(
            borderSide: new BorderSide(color: Colors.green),
            borderRadius: BorderRadius.all(
              Radius.circular(50),
            ),
          ),
        ),
        validator: (String value) {
          if (value.length < 6) {
            return 'Please Fill Your Password More Than 6 Characters';
          } else {
            return null;
          }
        },
        onSaved: (String value) {
          passwordString = value.trim();
        },
      ),
    );
  }
}
