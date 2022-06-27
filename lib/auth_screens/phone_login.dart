import 'package:flutter/material.dart';
import 'package:novakid_app/auth_screens/Allcolors.dart';
import 'package:novakid_app/auth_screens/freetrial_screen.dart';
import 'package:novakid_app/responsive_page.dart';
import 'package:page_transition/page_transition.dart';

class PhoneLogin extends StatefulWidget {
  const PhoneLogin({Key? key}) : super(key: key);

  @override
  State<PhoneLogin> createState() => _PhoneLoginState();
}

class _PhoneLoginState extends State<PhoneLogin> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Focus.of(context).unfocus(),
      child: Scaffold(
        body: Responsivepage(
          desktop: PhoneLoginA(),
          mobile: PhoneLoginA(),
          tablet: PhoneLoginA(),
        ),
      ),
    );
  }
}

class PhoneLoginA extends StatefulWidget {
  const PhoneLoginA({Key? key}) : super(key: key);

  @override
  State<PhoneLoginA> createState() => _PhoneLoginAState();
}

class _PhoneLoginAState extends State<PhoneLoginA> {
  bool isphone = false;
  bool iscolor = false;
  bool iswithoutpass = false;
  bool isforgot = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFF0eb5cf), Color(0xFFc8f9fa)],
            ),
          ),
          child: Column(
            children: [
              SizedBox(
                height: height * 0.06,
              ),
              Center(
                child: Image.asset(
                  "images/novakidlogo.png",
                  height: height * 0.07,
                  width: width * 0.5,
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              iswithoutpass == false
                  ? passwordwithout(height, width)
                  : passwordwith(height, width),
              SizedBox(
                height: iswithoutpass == false ? height * 0.16 : height * 0.05,
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                          duration: Duration(microseconds: 60),
                          type: PageTransitionType.bottomToTop,
                          child: FreeTrialLessonA(),
                          inheritTheme: true,
                          ctx: context),
                    );
                  },
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 0.5,
                          )
                        ]),
                    child: Center(
                      child: Text(
                        "I don't have an account",
                        style:
                            TextStyle(color: Color(0xFF0eb5cf), fontSize: 17),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container passwordwith(double height, double width) {
    return Container(
      height: height * 0.68,
      width: width * 0.9,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.5,
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            phoneandemail(height, width),
            SizedBox(
              height: height * 0.02,
            ),
            isphone == false
                ? phoneTextfield(height, width)
                : emailTextfield(height, width, "E-mail"),
            SizedBox(
              height: height * 0.03,
            ),
            emailTextfield(height, width, "Password"),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              height: height * 0.06,
              width: width,
              decoration: BoxDecoration(
                color: Color(0xFFfac60c),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  "Sign in",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  iswithoutpass = !iswithoutpass;
                });
              },
              child: Center(
                child: Text(
                  "Login with access code",
                  style: TextStyle(
                      color: AllColorsClass.authprimaryColor, fontSize: 22),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isforgot = !isforgot;
                });
              },
              child: Center(
                child: Text(
                  "I forgot password",
                  style: TextStyle(
                      color: AllColorsClass.authprimaryColor, fontSize: 22),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.005,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: width * 0.02,
                ),
                Expanded(
                  child: Container(
                    height: height * 0.0016,
                    width: width * 0.15,
                    color: AllColorsClass.authprimaryColor.withOpacity(0.2),
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("or login with"),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Expanded(
                  child: Container(
                    height: height * 0.0016,
                    width: width * 0.15,
                    color: AllColorsClass.authprimaryColor.withOpacity(0.2),
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
              ],
            ),
            Center(
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.facebook,
                    size: 50,
                    color: Color(0xFF3d5a80),
                  )),
            )
          ],
        ),
      ),
    );
  }

  Container passwordwithout(double height, double width) {
    return Container(
      height: height * 0.57,
      width: width * 0.9,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 0.5,
            )
          ]),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            phoneandemail(height, width),
            SizedBox(
              height: height * 0.02,
            ),
            isphone == false
                ? phoneTextfield(height, width)
                : emailTextfield(height, width, "E-mail"),
            SizedBox(
              height: height * 0.03,
            ),
            Container(
              height: height * 0.06,
              width: width,
              decoration: BoxDecoration(
                color: Color(0xFFfac60c),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Center(
                child: Text(
                  "Get code",
                  style: TextStyle(color: Colors.black, fontSize: 22),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.03,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  iswithoutpass = !iswithoutpass;
                });
              },
              child: Center(
                child: Text(
                  "Login with password",
                  style: TextStyle(
                      color: AllColorsClass.authprimaryColor, fontSize: 22),
                ),
              ),
            ),
            SizedBox(
              height: height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: width * 0.02,
                ),
                Expanded(
                  child: Container(
                    height: height * 0.0016,
                    width: width * 0.15,
                    color: AllColorsClass.authprimaryColor.withOpacity(0.2),
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("or login with"),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
                Expanded(
                  child: Container(
                    height: height * 0.0016,
                    width: width * 0.15,
                    color: AllColorsClass.authprimaryColor.withOpacity(0.2),
                  ),
                ),
                SizedBox(
                  width: width * 0.02,
                ),
              ],
            ),
            Center(
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.facebook,
                    size: 50,
                    color: Color(0xFF3d5a80),
                  )),
            )
          ],
        ),
      ),
    );
  }

  Column emailTextfield(double height, double width, String fieldsname) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          fieldsname,
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 7),
          child: SizedBox(
            height: height * 0.065,
            width: width,
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.black54),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Column phoneTextfield(double height, double width) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Phone number",
          style: TextStyle(color: Colors.black87, fontSize: 15),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            children: [
              Image.asset(
                "images/american_flag.png",
                height: height * 0.04,
                width: width * 0.1,
              ),
              SizedBox(
                width: width * 0.04,
              ),
              Text(
                "+1",
                style: TextStyle(color: Colors.black87, fontSize: 20),
              ),
              SizedBox(
                width: width * 0.12,
              ),
              SizedBox(
                height: height * 0.065,
                width: width * 0.46,
                child: TextFormField(
                  autovalidateMode:
                      isforgot == true ? AutovalidateMode.always : null,
                  validator: ((value) {
                    // setState(() {
                    isforgot == false ? "Wrong phone number" : null;
                    // });
                  }),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(14),
                      borderSide: BorderSide(color: Colors.black54),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }

  Row phoneandemail(double height, double width) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: GestureDetector(
            onTap: () {
              setState(() {
                isphone = !isphone;
                iscolor = !iscolor;
              });
            },
            child: Container(
              height: height * 0.045,
              width: width * 0.382,
              decoration: BoxDecoration(
                color: iscolor == false
                    ? AllColorsClass.authprimaryColor
                    : Colors.white,
                border: Border.all(
                  color: AllColorsClass.authprimaryColor,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  "Phone number",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: iscolor == true
                          ? AllColorsClass.authprimaryColor
                          : Colors.white,
                      fontSize: 15),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: GestureDetector(
            onTap: () {
              setState(() {
                isphone = !isphone;
                iscolor = !iscolor;
              });
            },
            child: Container(
              height: height * 0.045,
              width: width * 0.4,
              decoration: BoxDecoration(
                color: iscolor == true
                    ? AllColorsClass.authprimaryColor
                    : Colors.white,
                border: Border.all(
                  color: AllColorsClass.authprimaryColor,
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  "E-mail",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: iscolor == false
                          ? AllColorsClass.authprimaryColor
                          : Colors.white,
                      fontSize: 15),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
