import 'package:e_commerce_flutter/bloc/authentication/auth_bloc.dart';
import 'package:e_commerce_flutter/components/authentication/login/login.dart';
import 'package:e_commerce_flutter/components/widget/bezierContainer.dart';
import 'package:e_commerce_flutter/utils/urls_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  // declare the Controller

  TextEditingController userName = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  // UIs

  Widget _backButton() {
    return InkWell(
      onTap: () {
        Navigator.pop(context);
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 0, top: 10, bottom: 10),
              child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
            ),
            Text('Back',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500))
          ],
        ),
      ),
    );
  }

  Widget _entryField(String title, TextEditingController controller,
      {bool isPassword = false}) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
              controller: controller,
              obscureText: isPassword,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  fillColor: Color(0xfff3f3f4),
                  filled: true))
        ],
      ),
    );
  }

  Widget _submitButton(BuildContext context) {
    return FlatButton(
      child: Container(
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.symmetric(vertical: 15),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.shade200,
                  offset: Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 2)
            ],
            gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [Color(0xfffbb448), Color(0xfff7892b)])),
        child: Text(
          'Register Now',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      onPressed: () {
        var body = {
          'userName': userName.text,
          'numberPhone': phoneNumber.text,
          'email': email.text,
          'password': password.text
        };

        if (UrlUtils.isVerifiedFields(
            userName.text, email.text, phoneNumber.text, password.text)) {
          //ignore: close_sinks
          final _bloc = BlocProvider.of<AuthBloc>(context);
          _bloc.add(
            DoRegisterEvent(
              context: context,
              body: body,
            ),
          );
        } else {
          print("Verify ur fields");
        }
      },
    );
  }

  Widget _loginAccountLabel() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Already have an account ?',
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
          ),
          SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
            child: Text(
              'Login',
              style: TextStyle(
                  color: Color(0xfff79c4f),
                  fontSize: 13,
                  fontWeight: FontWeight.w600),
            ),
          )
        ],
      ),
    );
  }

  Widget _title() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(text: 'd', children: [
        TextSpan(
          text: 'ev',
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
        TextSpan(
          text: 'rnz',
          style: TextStyle(color: Color(0xffe46b10), fontSize: 30),
        ),
      ]),
    );
  }

  Widget _emailPasswordWidget() {
    return Column(
      children: <Widget>[
        _entryField("Username", userName),
        _entryField("Phone Number", phoneNumber),
        _entryField("Email id", email),
        _entryField("Password", password, isPassword: true),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider<AuthBloc>(
            create: (BuildContext context) => AuthBloc(),
            child: BlocListener<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state is DoRegisterSuccessState) {
                  print("here");

                  // case if the state is true and all rights
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                }

                if(state is DoRegisterFailed) {
                  print(state.message);
                }

              },
              child: BlocBuilder<AuthBloc, AuthState>(
                builder: (context, state) {
                  return SingleChildScrollView(
                      child: Container(
                    height: MediaQuery.of(context).size.height,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Expanded(
                                flex: 3,
                                child: SizedBox(),
                              ),
                              _title(),
                              SizedBox(
                                height: 50,
                              ),
                              _emailPasswordWidget(),
                              SizedBox(
                                height: 20,
                              ),
                              _submitButton(context),
                              Expanded(
                                flex: 2,
                                child: SizedBox(),
                              )
                            ],
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: _loginAccountLabel(),
                        ),
                        Positioned(top: 40, left: 0, child: _backButton()),
                        Positioned(
                            top: -MediaQuery.of(context).size.height * .15,
                            right: -MediaQuery.of(context).size.width * .4,
                            child: BezierContainer())
                      ],
                    ),
                  ));
                },
              ),
            )));
  }
}
