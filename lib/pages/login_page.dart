import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:hexcolor/hexcolor.dart';

import '../common/color.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginState();
}

class _LoginState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/top_app.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  height: 350,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/bg_center.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 100),
                    height: 140,
                    width: 140,
                    child: ClipOval(
                      child: Image.asset("assets/images/logo.png"),
                    ),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: ColorApp().color_white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 7,
                            blurRadius: 10,
                            offset: Offset(0, 3),
                          )
                        ]),
                  ),
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 260),
                    child: Column(
                      children: [
                        Text(
                          'Welcome',
                          style: GoogleFonts.lobster(
                            fontSize: 52,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Sign in to your account',
                          style: GoogleFonts.poppins(
                            fontSize: 16,
                            color: ColorApp().color_grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
              Stack(children: [
                Column(
                  children: [
                    SizedBox(height: 20.0),
                    Container(
                      width: 350,
                      height: 60,
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.0, vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: ColorApp().color_white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 7,
                            blurRadius: 10,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextFormField(
                          style: const TextStyle(color: Color(0xFF7E6D6D)),
                          decoration: InputDecoration(
                            icon: FaIcon(
                              FontAwesomeIcons.envelope,
                              color: ColorApp().color_grey,
                              size: 20,
                            ),
                            border: InputBorder.none,
                            hintText: 'Email Address',
                            hintStyle: GoogleFonts.poppins(
                              color: ColorApp().color_grey,
                              fontSize: 16,
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Container(
                      width: 350,
                      height: 60,
                      padding:
                          EdgeInsets.symmetric(horizontal: 7.0, vertical: 4),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            spreadRadius: 7,
                            blurRadius: 10,
                            offset: Offset(0, 3), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: TextFormField(
                          style: TextStyle(color: ColorApp().color_grey),
                          decoration: InputDecoration(
                            icon: FaIcon(
                              FontAwesomeIcons.lock,
                              color: ColorApp().color_grey,
                              size: 20,
                            ),
                            border: InputBorder.none,
                            hintText: 'Password',
                            hintStyle: GoogleFonts.poppins(
                              color: ColorApp().color_grey,
                              fontSize: 16,
                            ),
                          ),
                          keyboardType: TextInputType.emailAddress,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 160),
                      child: Text(
                        'Forgot your password?',
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: ColorApp().color_grey,
                        ),
                      ),
                    ),
                    SizedBox(height: 1.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 220),
                      child: Row(
                        children: [
                          Text(
                            'Sign In',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 10),
                          ElevatedButton(
                            child: Image.asset('assets/icons/arrow.png'),
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: StadiumBorder(),
                                backgroundColor: HexColor("#0EBE7E")),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 150),
                  child: Row(
                    children: [
                      Image.asset("assets/images/bottom_app.png"),
                      Padding(
                        padding: const EdgeInsets.only(top: 100),
                        child: Text.rich(
                          TextSpan(
                              text: "Don't have an account? ",
                              children: <InlineSpan>[
                                TextSpan(
                                  text: 'Create',
                                  style: GoogleFonts.poppins(
                                    fontSize: 16,
                                    color: ColorApp().color_grey,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ]),
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
