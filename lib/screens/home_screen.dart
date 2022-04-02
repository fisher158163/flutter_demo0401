import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo0401/utils/app_colors.dart';
import 'package:flutter_demo0401/widgets/button_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
                text: TextSpan(
                    text: "Hello",
                    style: TextStyle(
                        color: AppColors.mainColor,
                        fontSize: 80,
                        fontWeight: FontWeight.bold),
                    children: [
                  TextSpan(
                      text: "\nstart your beautiful day!",
                      style: TextStyle(
                        color: AppColors.secondarycolor,
                        fontSize: 20,
                      ))
                ])),
            SizedBox(
              height: MediaQuery.of(context).size.height / 1.8,
            ),
            ButtonWidget(
                backgroundColor: AppColors.mainColor,
                textColor: Colors.white,
                text: "Add Task"),
            SizedBox(
              height: 15,
            ),
            ButtonWidget(
                backgroundColor: Colors.white,
                textColor: AppColors.smallTextcolor,
                text: "View All")
          ],
        ),
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage("assets/welcome.png"))),
      ),
    );
  }
}
