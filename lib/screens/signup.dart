import 'package:edulearn/screens/signin.dart';
import 'package:edulearn/widget/bottom.dart';
import 'package:edulearn/widget/text_feild.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _HomePageState();
}

class _HomePageState extends State<SignUp> {
  bool showPass = false;
  bool showConfirm = false;
  showPassword() {
    setState(() {
      showPass = !showPass;
    });
  }

  showConfPass() {
    setState(() {
      showConfirm = !showConfirm;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 70,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 120),
            child: Row(
              children: [
                Icon(
                  Icons.browser_updated,
                  color: Colors.blue,
                ),
                const Text(
                  '|EduLearn',
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 30,
                      fontWeight: FontWeight.w100),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 36),
                child: Text(
                  'sign Up',
                  style: TextStyle(
                      color: Color(0xff0F0C80),
                      fontSize: 25,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          const MyTextField(
            prefixIcon: Icon(Icons.person),
            hintText: 'Full Name',
            obscureText: false,
          ),
          const MyTextField(
            prefixIcon: Icon(Icons.email),
            hintText: 'Email',
            obscureText: false,
          ),
          MyTextField(
            prefixIcon: Icon(Icons.password),
            hintText: 'Password',
            obscureText: showPass ? false : true,
            onPressed: showPassword,
            icon: showPass ? Icons.visibility_off : Icons.visibility,
          ),
          MyTextField(
            prefixIcon: Icon(Icons.password),
            hintText: 'Conform Password',
            obscureText: showConfirm ? false : true,
            onPressed: showConfPass,
            icon: showPass ? Icons.visibility_off : Icons.visibility,
          ),
          SizedBox(
            height: 20,
          ),
          const Bottom(
            text: 'Sign up',
            color: Color(0xff2ECC71),
          ),
          SizedBox(
            height: 80,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Text(
                    'I Have an account ?',
                    style: TextStyle(
                      color: Color(0xff471AA0),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Signin(),
                        ),
                      );
                    },
                    child: Text(
                      'Signin',
                      style: TextStyle(
                        color: Color.fromARGB(255, 10, 185, 121),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
