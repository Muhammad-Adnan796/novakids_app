import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:novakid_app/auth_screens/Allcolors.dart';
import 'package:getwidget/getwidget.dart';

class UserDetailPage extends StatefulWidget {
  // String name;
  // UserDetailPage({required this.name});

  @override
  State<UserDetailPage> createState() => _UserDetailPageState();
}

class _UserDetailPageState extends State<UserDetailPage> {
  bool istrue = false;
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset:false ,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AllColorsClass.DetaiApbarcolor,
              ),
              height: height * 0.27,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        right: 8.0, left: 8, top: 40, bottom: 2),
                    child: Center(
                      child: CircleAvatar(
                        maxRadius: 30,
                        backgroundColor: Colors.white,
                        child: Icon(
                          Icons.star_purple500_rounded,
                          color: Colors.yellow,
                          size: 45,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "Adnan",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, "/personalinfo");
              },
              child: userdetaillist(
                "Personal information",
                Icon(
                  Icons.contact_mail_outlined,
                  color: AllColorsClass.DetaiApbarcolor,
                  size: 25,
                ),
              ),
            ),
            userdetaillist(
              "Manage password",
              Icon(
                Icons.lock_open,
                color: AllColorsClass.DetaiApbarcolor,
                size: 25,
              ),
            ),
            userdetaillist(
              "Edit child's information",
              Icon(
                Icons.personal_injury_outlined,
                color: AllColorsClass.DetaiApbarcolor,
                size: 25,
              ),
            ),
            userdetaillist(
              "Balance history",
              Icon(
                Icons.account_balance_wallet_sharp,
                color: AllColorsClass.DetaiApbarcolor,
                size: 25,
              ),
            ),
            userdetaillist(
              "Referral program",
              Icon(
                Icons.attach_money_rounded,
                color: AllColorsClass.DetaiApbarcolor,
                size: 25,
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                height: height * 0.0005,
                width: width * 0.9,
                decoration: BoxDecoration(
                  color: AllColorsClass.DetaiApbarcolor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28, top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  FaIcon(
                    FontAwesomeIcons.facebook,
                    color: Color(0xFF3262a8),
                    size: 28,
                  ),
                  SizedBox(
                    width: width * 0.02,
                  ),
                  Text(
                    "Facebook",
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(
                    width: width * 0.45,
                  ),
                  GFToggle(
                    disabledTrackColor: Colors.grey.withOpacity(0.34),
                    enabledTrackColor: Colors.grey.withOpacity(0.7),
                    onChanged: (val) {
                      setState(() {
                        val = !istrue;
                      });
                    },
                    value: true,
                    type: GFToggleType.ios,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: height * 0.0005,
                width: width * 0.9,
                decoration: BoxDecoration(
                  color: AllColorsClass.DetaiApbarcolor,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            RichText(
              text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  text: "Support team: ",
                  children: [
                    TextSpan(
                        style: TextStyle(
                          color: AllColorsClass.DetaiApbarcolor,
                          fontSize: 16,
                        ),
                        text: "support@novakidsschool.com"),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 175),
              child: Text(
                "(00:00 - 23:59, GMT)",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 20, bottom: 8, left: 8, right: 8),
              child: Text(
                "Log out",
                style: TextStyle(color: Colors.red, fontSize: 23),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding userdetaillist(String title, Icon icon) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8, top: 10, bottom: 10),
      child: ListTile(
        leading: icon,
        title: Text(
          title,
          style: TextStyle(color: AllColorsClass.DetaiApbarcolor, fontSize: 22),
        ),
      ),
    );
  }
}
