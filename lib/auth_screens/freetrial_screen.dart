import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:novakid_app/auth_screens/Allcolors.dart';
import 'package:novakid_app/custom_button.dart';
import 'package:novakid_app/responsive_page.dart';
import 'package:novakid_app/screens/homepage.dart';
import 'package:page_transition/page_transition.dart';

class FreeTrialLesson extends StatefulWidget {
  const FreeTrialLesson({Key? key}) : super(key: key);

  @override
  State<FreeTrialLesson> createState() => _FreeTrialLessonState();
}

class _FreeTrialLessonState extends State<FreeTrialLesson> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Focus.of(context).unfocus(),
      child: Scaffold(
        body: Responsivepage(
          desktop: FreeTrialLesson(),
          mobile: FreeTrialLesson(),
          tablet: FreeTrialLesson(),
        ),
      ),
    );
  }
}

class FreeTrialLessonA extends StatefulWidget {
  const FreeTrialLessonA({Key? key}) : super(key: key);

  @override
  State<FreeTrialLessonA> createState() => _FreeTrialLessonAState();
}

class _FreeTrialLessonAState extends State<FreeTrialLessonA> {
  TextEditingController nameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController birthC = TextEditingController();
  TextEditingController phoneC = TextEditingController();
  TextEditingController promoC = TextEditingController();

  FocusNode myfocusnode1 = FocusNode();
  FocusNode myfocusnode2 = FocusNode();
  FocusNode myfocusnode3 = FocusNode();
  FocusNode myfocusnode4 = FocusNode();
  FocusNode myfocusnode5 = FocusNode();
  final GlobalKey _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: SvgPicture.asset(
              "images/vector.svg",
              color: Colors.black,
            ),
          ),
        ],
        title: Text(
          "Free trial lesson",
          style: TextStyle(
              fontWeight: FontWeight.w900, color: Colors.black, fontSize: 20),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: height * 0.004,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.yellow),
                    ),
                    Container(
                      height: height * 0.004,
                      width: width * 0.4,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.yellow.withOpacity(0.4)),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.02,
                ),
                textFields(
                  height,
                  width,
                  "Your name",
                  nameC,
                  "This field can not be empty",
                  "",
                  myfocusnode1,
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                textFields(height, width, "E-mail", emailC,
                    "Invalid email format", "", myfocusnode2),
                SizedBox(
                  height: height * 0.01,
                ),
                textFields(height, width, "Your birth date", birthC,
                    "Date of birth is missing", "", myfocusnode3),
                SizedBox(
                  height: height * 0.01,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: phoneTextfield(height, width, phoneC, myfocusnode4),
                ),
                SizedBox(
                  height: height * 0.01,
                ),
                textFields(
                    height, width, "Promocode", promoC, "", "", myfocusnode5),
                SizedBox(
                  height: height * 0.24,
                ),
                SizedBox(
                  width: width * 0.9,
                  child: CustomButton(
                      onPressed: () {
                        Navigator.pushNamed(context, "/homepage");
                      },
                      title: Text(
                        "Next",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      backgroundcolor: Colors.yellow),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column phoneTextfield(double height, double width, var controller2,
      [FocusNode? focusnode]) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                width: width * 0.07,
              ),
              SizedBox(
                height: height * 0.074,
                width: width * 0.63,
                child: TextFormField(
                    focusNode: focusnode,
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null) {
                        return "Wrong phone number";
                      }

                      return null;
                    },
                    controller: controller2,
                    cursorColor: AllColorsClass.cursorcolor,
                    cursorHeight: 25,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                          color: Colors.yellow,
                        ),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.black12.withOpacity(0.2)),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      labelText: "Phone number",
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w900,
                        color:
                            focusnode!.hasFocus ? Colors.yellow : Colors.grey,
                        fontSize: 15,
                      ),
                    )),
              )
            ],
          ),
        ),
      ],
    );
  }

  Padding textFields(double height, double width, String labelText,
      var controller1, String validText, var chk,
      [FocusNode? focusnode]
      /** var ck*/
      ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: height * 0.075,
        child: TextFormField(
          focusNode: focusnode,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          controller: controller1,
          validator: (value) {
            if (value == null && chk == value!.contains("@")) {
            } else if (value == null) {
              return validText;
            }

            return null;
          },
          cursorColor: AllColorsClass.cursorcolor,
          cursorHeight: 25,
          decoration: InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: Colors.yellow,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black12.withOpacity(0.2)),
              borderRadius: BorderRadius.circular(5),
            ),
            labelText: labelText,
            labelStyle: TextStyle(
              fontWeight: FontWeight.w900,
              color: focusnode!.hasFocus ? Colors.yellow : Colors.grey,
              fontSize: 15,
            ),
          ),
        ),
      ),
    );
  }
}
