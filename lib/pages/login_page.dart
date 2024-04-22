import 'package:cricket_mania/common_widgets/common_text_field.dart';
import 'package:flutter/material.dart';
import '../utils/constant.dart';
import '../utils/static_data.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController userNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isValidUserName = true;
  bool isValidPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(child: loginPage()),
    );
  }

  Widget loginPage() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Align(
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/player.jpg',
                  scale: 3,
                )),
            SizedBox(
              height: 10,
            ),
            Text('Login here'),
            SizedBox(
              height: 30,
            ),
            MyTextField(
              controller: userNameController,
              prefixIcon: Icon(Icons.verified_user_outlined ,color: Colors.black,),
              hintText: 'Username',
              obscureText: false,
              keyboardType: TextInputType.text,
            ),
            SizedBox(
              height: 20,
            ),
            MyTextField(
              controller: passwordController,
              prefixIcon: Icon(Icons.lock ,color: Colors.black,),
              hintText: 'Password',
              obscureText: true,
              keyboardType: TextInputType.text,
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                if (StaticData()
                    .userDetails
                    .any((element) => (element['userName'] == userNameController.text && element['password'] == passwordController.text))) {
                  Navigator.pushNamed(context, Strings.homeScreen);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Invalid username or password'),
                      backgroundColor: Colors.red,
                    ),
                  );
                }
                setState(() {});
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), color: Colors.indigo.shade800),
                child: Center(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
