import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project/common/color.dart';
import 'login_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: ColorApp().color_green,
        //   leading: IconButton(
        //    onPressed: () {

        //   },
        //  icon: const Icon(Icons.menu),
        // color: Colors.white,
        // ),
        title: Padding(
          padding: const EdgeInsets.only(left: 10, top: 7),
          child: Text.rich(
            TextSpan(
                text: 'Welcome\n ',
                style: GoogleFonts.lobster(
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Thuy Hai',
                      style: GoogleFonts.poppins(
                          fontSize: 18, fontStyle: FontStyle.normal))
                ]),
          ),
        ),
        actions: [
          Container(
              padding: EdgeInsets.only(right: 15),
              child: Image.asset("assets/images/girl.png")),
        ],
      ),
      drawer: Drawer(
        width: 250,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 150,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: ColorApp().color_green,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8, left: 10),
                  child: Row(
                    children: [
                      Text.rich(
                        TextSpan(
                            text: 'Thuy Hai\n ',
                            style: GoogleFonts.poppins(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                                color: ColorApp().color_white),
                            children: <InlineSpan>[
                              TextSpan(
                                text: '09176948645',
                                style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontStyle: FontStyle.normal,
                                ),
                              ),
                            ]),
                      ),
                      Spacer(),
                      Image.asset("assets/images/logo.png"),
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.solidUser, size: 18),
              title: Text("My doctor",
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w500)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.notesMedical, size: 18),
              title: Text("Medican records",
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w500)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.creditCard, size: 18),
              title: Text("Payment",
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w500)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.calendarDays, size: 18),
              title: Text("Booking",
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w500)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.check, size: 18),
              title: Text("Tips Heathy",
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w500)),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 250),
              child: ListTile(
                leading: FaIcon(FontAwesomeIcons.rightFromBracket, size: 18),
                title: Text("Log out",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.w500)),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(children: [
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
            TitleMore(title: "Category", press: () {}),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.only(top: 10, right: 20, bottom: 20),
                child: Row(
                  children: [
                    CategoryCard(
                        image: "assets/icons/overview.svg",
                        title: "Overview",
                        color: "#BE0E62",
                        press: () {}),
                    CategoryCard(
                        image: "assets/icons/heart.svg",
                        title: "Heart",
                        color: "#2753F3",
                        press: () {}),
                    CategoryCard(
                        image: "assets/icons/dental.svg",
                        title: "dental",
                        color: "#0EBE7E",
                        press: () {}),
                    CategoryCard(
                        image: "assets/icons/body.svg",
                        title: "Body",
                        color: "#9B0EBE",
                        press: () {}),
                    CategoryCard(
                        image: "assets/icons/eyes.svg",
                        title: "Eyes",
                        color: "#FE8043",
                        press: () {}),
                    CategoryCard(
                        image: "assets/icons/sugeon.svg",
                        title: "Sugeon",
                        color: "#B19C32",
                        press: () {}),
                    CategoryCard(
                        image: "assets/icons/skin.svg",
                        title: "Skin",
                        color: "#FF4F50",
                        press: () {}),
                  ],
                ),
              ),
            ),
            TitleMore(title: "Popular Doctor", press: () {}),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.only(top: 10, right: 20, bottom: 20),
                child: Row(
                  children: [
                    CardDoctor(
                      image: "assets/images/doctor1.png",
                      nameDoctor: "Dr.Graphn",
                      specialized: "Dental",
                    ),
                    CardDoctor(
                      image: "assets/images/doctor2.png",
                      nameDoctor: "Dr.Graphn",
                      specialized: "Eyes",
                    ),
                    CardDoctor(
                      image: "assets/images/doctor3.png",
                      nameDoctor: "Dr.Graphn",
                      specialized: "Heart",
                    ),
                    CardDoctor(
                      image: "assets/images/doctor4.png",
                      nameDoctor: "Dr.Graphn",
                      specialized: "Skin",
                    ),
                    CardDoctor(
                      image: "assets/images/doctor5.png",
                      nameDoctor: "Dr.Graphn",
                      specialized: "Sugeon",
                    ),
                  ],
                ),
              ),
            ),
            TitleMore(title: "Feature Doctor", press: () {}),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                margin: EdgeInsets.only(top: 10, right: 20, bottom: 20),
                child: Row(
                  children: [
                    CardFeature(
                        image: "assets/images/doctor_cr.png",
                        price: "25/hour",
                        rating: "3.7",
                        nameDoctor: "Dr.Crick"),
                    CardFeature(
                        image: "assets/images/doctor_cr.png",
                        price: "25/hour",
                        rating: "3.7",
                        nameDoctor: "Dr.Crick"),
                    CardFeature(
                        image: "assets/images/doctor_cr.png",
                        price: "25/hour",
                        rating: "3.7",
                        nameDoctor: "Dr.Crick"),
                    CardFeature(
                        image: "assets/images/doctor_cr.png",
                        price: "25/hour",
                        rating: "3.7",
                        nameDoctor: "Dr.Crick"),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
      bottomNavigationBar: MyBottomBar(),
    );
  }
}

class CardFeature extends StatelessWidget {
  const CardFeature({
    super.key,
    required this.image,
    required this.price,
    required this.nameDoctor,
    required this.rating,
  });
  final String image;
  final String price;
  final String nameDoctor;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 10),
      padding: EdgeInsets.all(10),
      width: 110,
      decoration: BoxDecoration(
          color: ColorApp().color_white,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 5),
              blurRadius: 20,
              color: Colors.green.withOpacity(0.2),
            )
          ]),
      child: Column(children: [
        Row(
          children: [
            FaIcon(
              FontAwesomeIcons.heart,
              size: 15,
            ),
            Spacer(),
            Icon(
              Icons.star,
              size: 22,
              color: Colors.red,
            ),
            Text(
              rating,
              style: TextStyle(color: Colors.red),
            ),
          ],
        ),
        SizedBox(height: 5),
        Image.asset(image),
        SizedBox(height: 5),
        Text(
          nameDoctor,
          style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500),
        ),
        Text(
          "\$$price",
          style: GoogleFonts.poppins(fontSize: 14, color: HexColor("#677294")),
        ),
      ]),
    );
  }
}

class CardDoctor extends StatelessWidget {
  const CardDoctor({
    super.key,
    required this.nameDoctor,
    required this.specialized,
    required this.image,
  });

  final String nameDoctor;
  final String specialized;
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15),
      width: 150,
      child: Column(
        children: [
          Image.asset(image),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: ColorApp().color_white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 5),
                      blurRadius: 20,
                      color: Colors.green.withOpacity(0.2))
                ]),
            child: Column(children: [
              Text(
                nameDoctor,
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                "Doctor $specialized",
                style: GoogleFonts.poppins(
                  fontSize: 14,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.star, color: Colors.red, size: 20),
                  Icon(Icons.star, color: Colors.red, size: 20),
                  Icon(Icons.star, color: Colors.red, size: 20),
                  Icon(Icons.star, color: Colors.red, size: 20),
                  Icon(Icons.star, color: Colors.grey, size: 20),
                ],
              )
            ]),
          )
        ],
      ),
    );
  }
}

class TitleMore extends StatelessWidget {
  const TitleMore({
    super.key,
    required this.title,
    this.press,
  });
  final String title;
  final void Function()? press;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(children: [
          Expanded(
              child: Text(
            title,
            style: GoogleFonts.poppins(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
          )),
          GestureDetector(onTap: press, child: Text("see all")),
          Icon(Icons.arrow_right)
        ]),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.image,
    required this.title,
    required this.press,
    required this.color,
  });
  final String image;
  final String title;
  final void Function()? press;
  final String color;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: 10),
      // width: size.width * 0.2,
      // height: size.height * 0.4,
      child: GestureDetector(
        onTap: press,
        child: Column(
          children: [
            Container(
              width: 80,
              height: 90,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              decoration: BoxDecoration(
                  color: HexColor(color),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                        offset: Offset(0, 5),
                        blurRadius: 20,
                        color: Colors.green.withOpacity(0.2))
                  ]),
              child: Container(child: SvgPicture.asset(image)),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Text(
                title,
                style: GoogleFonts.poppins(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyBottomBar extends StatelessWidget {
  const MyBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 40,
        right: 40,
      ),
      height: 70,
      decoration: BoxDecoration(
        color: ColorApp().color_green,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        boxShadow: [
          BoxShadow(
              offset: Offset(0, -10),
              blurRadius: 35,
              color: ColorApp().color_green.withOpacity(0.30))
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: BoxDecoration(
                color: ColorApp().color_white,
                borderRadius: BorderRadius.all(Radius.circular(100))),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
              icon: FaIcon(
                FontAwesomeIcons.house,
                color: ColorApp().color_green,
                size: 20,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.solidHeart,
              color: ColorApp().color_white,
              size: 22,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.plus,
              color: ColorApp().color_white,
              size: 22,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.solidBell,
              color: ColorApp().color_white,
              size: 22,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.solidUser,
              color: ColorApp().color_white,
              size: 22,
            ),
          ),
        ],
      ),
    );
  }
}
