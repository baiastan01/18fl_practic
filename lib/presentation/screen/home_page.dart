import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 23,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 5,
                    color: Colors.green,
                  ),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    70,
                  ),
                ),
                width: 117,
                height: 116,
                child: Center(
                  child: Text(
                    "M",
                    style: TextStyle(
                      fontSize: 64,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff409db1),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 23,
            ),
            Text(
              "Let’s check your \n height and weight.",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyCont(
                  text1: "kgs",
                ),
                MyCont(
                  isSelected: true,
                  text1: "lbs",
                ),
                SizedBox(
                  width: 20,
                ),
                MyCont(
                  text1: "cms",
                ),
                MyCont(
                  isSelected: true,
                  text1: "ins",
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Column(
              children: [
                NewWidjet(
                  images: "assets/images/pngs/u_calculator.png",
                  text: "Current Weight",
                  text2: "--- kgs",
                ),
                SizedBox(
                  height: 10,
                ),
                NewWidjet(
                  images: "assets/images/pngs/u_calculator.png",
                  text: "Target Weight",
                  text2: "--- kgs",
                ),
                SizedBox(
                  height: 10,
                ),
                NewWidjet(
                  images: "assets/images/pngs/u_ruler.png",
                  text: "Height",
                  text2: "--- cms",
                ),
                SizedBox(
                  height: 10,
                ),
                NewWidjet(
                  images: "assets/images/pngs/u_mars.png",
                  text: "Gender",
                  text2: "Female",
                ),
                SizedBox(
                  height: 10,
                ),
                NewWidjet(
                  images: "assets/images/pngs/u_calender.png",
                  text: "Birthday",
                  text2: "dd/mm/yyyy",
                ),
                SizedBox(
                  height: 10,
                ),
                NewWidjet(
                  images: "assets/images/pngs/u_users-alt.png",
                  text: "Gym Member",
                  text2: "No",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NewWidjet extends StatelessWidget {
  const NewWidjet({
    super.key,
    required this.images,
    required this.text,
    required this.text2,
  });
  final String text;
  final String text2;
  final String images;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 315,
      height: 48,
      decoration: BoxDecoration(
        color: Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.6),
            blurRadius: 2,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 20,
        ),
        child: Row(
          children: [
            Image.asset(
              images,
              width: 20,
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 20, 0),
              child: Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Spacer(),
            Text(
              text2,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyCont extends StatelessWidget {
  const MyCont({
    super.key,
    required this.text1,
    this.isSelected = false,
  });
  final String text1;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 62,
      height: 36,
      decoration: BoxDecoration(
        color: isSelected ? const Color(0xffF0F0F0) : const Color(0xff000000),
        borderRadius: const BorderRadius.all(
          Radius.circular(25),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 8,
        ),
        child: Center(
          child: Text(
            text1,
            style: TextStyle(
              fontSize: 14,
              color: isSelected ? const Color(0xff000000) : Color(0xffFFFFFF),
            ),
          ),
        ),
      ),
    );
  }
}
