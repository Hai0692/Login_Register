import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

import '../common/color.dart';
import 'home_page.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.all(10),
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              color: ColorApp().color_green,
              borderRadius: BorderRadius.all(Radius.circular(15))),
          child: Center(
            child: FaIcon(
              FontAwesomeIcons.chevronLeft,
              color: ColorApp().color_white,
              size: 20,
            ),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            "Find Doctor",
            style: GoogleFonts.poppins(
                fontSize: 25, fontWeight: FontWeight.w600, color: Colors.black),
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          // decoration: BoxDecoration(
          //   image: DecorationImage(
          //     image: AssetImage("assets/images/bg.png"),
          //     fit: BoxFit.cover,
          //   ),
          // ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                padding: EdgeInsets.symmetric(horizontal: 20),
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                    color: ColorApp().color_white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: ColorApp().color_grey.withOpacity(0.3),
                        spreadRadius: 7,
                        blurRadius: 10,
                        offset: Offset(0, 3), // changes position of shadow
                      ),
                    ]),
                child: Row(
                  children: [
                    SvgPicture.asset("assets/icons/search.svg"),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            hintText: "Search...",
                            hintStyle: TextStyle(
                              color: ColorApp().color_grey.withOpacity(0.5),
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SvgPicture.asset("assets/icons/action_x.svg"),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Wrap(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ItemSelected(
                      text: "All", colorText: "#FFFFFF", background: "#0EBE7E"),
                  Spacer(),
                  ItemSelected(
                      text: "Eyes",
                      colorText: "#0EBE7E",
                      background: "#DADADA"),
                  ItemSelected(
                      text: "Skin",
                      colorText: "#0EBE7E",
                      background: "#DADADA"),
                  ItemSelected(
                      text: "Heart",
                      colorText: "#0EBE7E",
                      background: "#DADADA"),
                  ItemSelected(
                      text: "Eyes",
                      colorText: "#0EBE7E",
                      background: "#DADADA"),
                  ItemSelected(
                      text: "Body",
                      colorText: "#0EBE7E",
                      background: "#DADADA"),
                  ItemSelected(
                      text: "Dental",
                      colorText: "#0EBE7E",
                      background: "#DADADA")
                ],
              ),
              CardFindDoctor(),
              CardFindDoctor(),
              CardFindDoctor(),
              CardFindDoctor(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: MyBottomBar(),
    );
  }
}

class CardFindDoctor extends StatelessWidget {
  const CardFindDoctor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
      decoration: BoxDecoration(
        color: ColorApp().color_white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: AssetImage("assets/images/doctor7.png"),
                fit: BoxFit.cover,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Next Available",
                style: GoogleFonts.poppins(
                    color: ColorApp().color_green,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              Text.rich(
                TextSpan(
                    text: '10:00 ',
                    style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    children: <InlineSpan>[
                      TextSpan(
                          text: 'AM Tomorrow',
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                          ))
                    ]),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Dr.Skutie",
                    style: GoogleFonts.poppins(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 50),
                    child: FaIcon(
                      FontAwesomeIcons.solidHeart,
                      color: Colors.red,
                      size: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3),
              Text(
                "Tooths Dentics",
                style: GoogleFonts.poppins(
                    color: ColorApp().color_green,
                    fontSize: 14,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 3),
              Text(
                "7 year experience",
                style: GoogleFonts.poppins(
                  color: ColorApp().color_grey,
                  fontSize: 14,
                ),
              ),
              SizedBox(height: 3),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 15,
                    width: 15,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: ColorApp().color_green),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Text(
                      "69 partiens ",
                      style: GoogleFonts.poppins(
                        color: ColorApp().color_grey,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 50),
                child: ElevatedButton(
                  child: Text(
                    "Book Now",
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: StadiumBorder(),
                      backgroundColor: HexColor("#0EBE7F")),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}

class ItemSelected extends StatelessWidget {
  const ItemSelected({
    super.key,
    required this.text,
    required this.colorText,
    required this.background,
  });
  final String text;
  final String colorText;
  final String background;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 85,
      height: 40,
      decoration: BoxDecoration(
        color: HexColor(background),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: Center(
          child: Text(
        text,
        style: GoogleFonts.poppins(
            color: HexColor(colorText),
            fontWeight: FontWeight.w500,
            fontSize: 16),
      )),
    );
  }
}
