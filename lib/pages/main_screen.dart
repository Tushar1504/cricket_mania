import 'package:cricket_mania/common_widgets/common_button.dart';
import 'package:flutter/material.dart';

import '../utils/constant.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: mainScreen(),
    );
  }
  Widget mainScreen(){
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CommonButton(title: "Scorer", onPressed: (){
           Navigator.pushNamed(context, Strings.loginScreen);
          }),
          SizedBox(height: 20,),
          CommonButton(title: "View Score", onPressed: (){
            Navigator.pushNamed(context, Strings.viewScore);
          }),
        ],
      ),
    );
}
}
