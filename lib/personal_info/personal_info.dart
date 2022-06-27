import 'package:flutter/material.dart';
import 'package:novakid_app/auth_screens/Allcolors.dart';

class Personalinfo extends StatefulWidget {
  const Personalinfo({Key? key}) : super(key: key);

  @override
  State<Personalinfo> createState() => _PersonalinfoState();
}

class _PersonalinfoState extends State<Personalinfo> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColorsClass.personalinfoapbar,
        title: Text(
          "Personal information",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 25, left: 25, right: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  text: "Phone number: ",
                  children: [
                    TextSpan(
                        style: TextStyle(
                          color: AllColorsClass.personalinfoapbar,
                          fontSize: 16,
                        ),
                        text: " +923108123796"),
                  ]),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            RichText(
              text: TextSpan(
                  style: TextStyle(color: Colors.black, fontSize: 16),
                  text: "Email: ",
                  children: [
                    TextSpan(
                        style: TextStyle(
                          color: AllColorsClass.personalinfoapbar,
                          fontSize: 16,
                        ),
                        text: "adnan8123796@gmail.com"),
                  ]),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "Privacy policy",
              style: TextStyle(
                color: AllColorsClass.personalinfoapbar,
                fontSize: 16,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Container(
                height: height * 0.0005,
                width: width * 0.9,
                decoration: BoxDecoration(
                  color: AllColorsClass.personalinfoapbar,
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Text(
              "Timezone",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            Container(
              child: ExpansionTile(
                  children: [
                    RichText(
                      text: TextSpan(
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.4),
                              fontSize: 16),
                          text: "UTC -7:00 ",
                          children: [
                            TextSpan(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                text: "America/Los_Angeles"),
                          ]),
                    ),
                  ],
                  title: Text(
                    "America/los_Angeles",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
