import 'package:flutter/material.dart';
import 'package:mookfood/components/logo.dart';
import 'package:mookfood/components/normal_dialog.dart';
import '../constant.dart';

class SignUp extends StatefulWidget {
  SignUp({Key key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final formKey = GlobalKey<FormState>();
  String emailString, passwordString, nameString;
  String chooseType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up"),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: RadialGradient(colors: [
            Colors.green.shade100,
            Colors.yellow.shade100,
          ]),
        ),
        child: ListView(
          padding: EdgeInsets.all(30.0),
          children: <Widget>[
            myLogo(),
         
            SizedBox(
              height: 10.0,
            ),
            showName(),
            SizedBox(
              height: 10.0,
            ),
            showUserName(),
            SizedBox(
              height: 10.0,
            ),
            showPassword(),
            SizedBox(
              height: 10.0,
            ),
            userRadio(),
            shopRadio(),
            riderRadio(),
            SizedBox(
              height: 10.0,
            ),
            loginButton(),
          ],
        ),
      ),
    );
  }

  Widget userRadio() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 250.0,
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: "User",
                  groupValue: chooseType,
                  onChanged: (value) {
                    setState(
                      () {
                        chooseType = value;
                      },
                    );
                  },
                ),
                Text(
                  'ผู้สั่งอาหาร',
                  style: TextStyle(
                    color: kTextColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      );

  Widget shopRadio() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 250.0,
            child: Row(
              children: <Widget>[
                Radio(
                  value: "Shop",
                  groupValue: chooseType,
                  onChanged: (value) {
                    setState(
                      () {
                        chooseType = value;
                      },
                    );
                  },
                ),
                Text(
                  'เจ้าของร้านอาหาร',
                  style: TextStyle(
                    color: kTextColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      );

  Widget riderRadio() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 250.0,
            child: Row(
              children: <Widget>[
                Radio(
                  value: "Rider",
                  groupValue: chooseType,
                  onChanged: (value) {
                    setState(
                      () {
                        chooseType = value;
                      },
                    );
                  },
                ),
                Text(
                  'ผู้ส่งอาหาร',
                  style: TextStyle(
                    color: kTextColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      );

  Widget myLogo() => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Logo(),
        ],
      );

  Container showName() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        onChanged: (value) => nameString = value.trim(),
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(color: Colors.blue.shade900),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.face,
            color: Colors.blue.shade900,
            size: 30.0,
          ),
          labelText: 'Name',
          labelStyle: TextStyle(color: Colors.blue.shade900),
          // helperText: 'Input your email',
          // helperStyle: TextStyle(color: Colors.purple),
          border: new OutlineInputBorder(
            borderSide: new BorderSide(color: Colors.purple),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
        ),
        // validator: (String value) {
        //   if (value.isEmpty || value == null) {
        //     return 'Please Fill Form';
        //   } else {
        //     return null;
        //   }
        // },
        // onSaved: (String value) {
        //   nameString = value.trim();
        // },
      ),
    );
  }

  Container showUserName() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        onChanged: (value) => emailString = value.trim(),
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(color: Colors.blue.shade900),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.person,
            color: Colors.blue.shade900,
            size: 30.0,
          ),
          labelText: 'User',
          labelStyle: TextStyle(color: Colors.blue.shade900),
          // helperText: 'Input your email',
          // helperStyle: TextStyle(color: Colors.purple),
          border: new OutlineInputBorder(
            borderSide: new BorderSide(color: Colors.purple),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
        ),
        // validator: (String value) {
        //   if (value.isEmpty || value == null) {
        //     return 'Please Fill Form';
        //   } else {
        //     return null;
        //   }
        // },
        // onSaved: (String value) {
        //   emailString = value.trim();
        // },
      ),
    );
  }

  Container showPassword() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: TextField(
        onChanged: (value) => passwordString = value.trim(),
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
        // validator: (String value) {
        //   if (value.length < 6) {
        //     return 'Please Fill Your Password More Than 6 Characters';
        //   } else {
        //     return null;
        //   }
        // },
        // onSaved: (String value) {
        //   passwordString = value.trim();
        // },
      ),
    );
  }

  Container loginButton() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: RaisedButton(
        onPressed: () {
          // formKey.currentState.save();
          print(
              'username = $nameString , email = $emailString , password = $passwordString , chooseType = $chooseType');
          if (nameString == null ||
              nameString.isEmpty ||
              emailString == null ||
              emailString.isEmpty ||
              passwordString == null ||
              passwordString.isEmpty) {
            print('Have Space username');
            normalDialog(context, 'Please Fill the Form Completely');
          } else if (chooseType == null) {
            normalDialog(context, 'Plese choose type of applicants');
          } else {}

          print('Sign up');
        },
        child: Text(
          'Sign up',
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
}
