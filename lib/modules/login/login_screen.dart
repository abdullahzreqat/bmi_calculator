// ignore_for_file: must_be_immutable
import 'package:bmi_calculator/modules/bmi/bmi_home/home_screen.dart';
import 'package:bmi_calculator/modules/bmi/bmi_result/bmi_result_screen.dart';
import 'package:bmi_calculator/modules/messenger/messenger_screen.dart';
import 'package:bmi_calculator/shared/components/components.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordFocus = FocusNode();
  var formKey = GlobalKey<FormState>();
  var passwordHidden = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xff0A0F1E),
      body: Padding(
        padding: EdgeInsets.all(size.height * .020),
        child: Form(
          key: formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Login",
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white.withOpacity(.85)),
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Your Email!";
                    }
                    if (!RegExp(r'^[\w-.]+@([\w-]+.)+[\w-]{2,4}$')
                        .hasMatch(value)) {
                      return "Email Not Valid!";
                    }
                  },
                  onFieldSubmitted: (_) {
                    FocusScope.of(context).requestFocus(passwordFocus);
                  },
                  style: TextStyle(color: Colors.white70),
                  cursorColor: Color(0xffE8144B),
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.grey,
                        size: 20,
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xffE8144B).withOpacity(.4))),
                      hintText: "Email Address",
                      hintStyle: TextStyle(color: Colors.white38),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)))),
              SizedBox(
                height: size.height * 0.01,
              ),
              TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Enter Password!";
                    }
                    if (value.length < 8) {
                      return "Password must be at least 8 character";
                    }
                  },
                  focusNode: passwordFocus,
                  style: TextStyle(color: Colors.white70),
                  cursorColor: Color(0xffE8144B).withOpacity(.4),
                  controller: passwordController,
                  obscureText: passwordHidden,
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            passwordHidden = !passwordHidden;
                          });
                        },
                        icon: passwordHidden
                            ? Icon(
                                Icons.remove_red_eye_rounded,
                                size: 20,
                                color: Colors.grey,
                              )
                            : Icon(
                                Icons.visibility_off,
                                size: 20,
                                color: Colors.grey,
                              )),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xffE8144B).withOpacity(.4))),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.grey,
                      size: 20,
                    ),
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.white38),
                    border: OutlineInputBorder(),
                  )),
              SizedBox(
                height: size.height * 0.015,
              ),
              Container(
                  width: double.infinity,
                  child: defaultButton(
                      buttonColor: Color(0xffE8144B).withOpacity(0.4),
                      text: "LOGIN",
                      pressFunction: () {
                        if (formKey.currentState!.validate()) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()));
                        }
                      })),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "You don't have an account? ",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white38),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Color(0xffE8144B).withOpacity(.4)),
                      ))
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  FloatingActionButton(
                    heroTag: "messengerBtn",
                    mini: true,
                    backgroundColor: Color(0xffE8144B).withOpacity(.4),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MessengerScreen())),
                    child: Icon(
                      Icons.facebook,
                      color: Colors.white54,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50.0),
                    child: FloatingActionButton(
                      heroTag: "bmiHome",
                      mini: true,
                      backgroundColor: Color(0xffE8144B).withOpacity(.4),
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen())),
                      child: Icon(
                        Icons.calculate_outlined,
                        color: Colors.white54,
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    heroTag: "bmiResult",
                    mini: true,
                    backgroundColor: Color(0xffE8144B).withOpacity(.4),
                    onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ResultScreen())),
                    child: Icon(
                      Icons.chrome_reader_mode_outlined,
                      color: Colors.white54,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      //floatingActionButtonLocation: ,
    );
  }
}
