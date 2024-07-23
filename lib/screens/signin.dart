import 'package:edulearn/screens/signup.dart';
import 'package:edulearn/widget/bottom.dart';
import 'package:edulearn/widget/text_feild.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _HomePageState();
}

class _HomePageState extends State<Signin> {
  bool showPass = false;
  showPassword() {
    setState(() {
      showPass = !showPass;
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
          Image.asset(
            'assets/logo-no-background 2.png',
            width: 200,
          ),
          const SizedBox(
            height: 20,
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 36),
                child: Text(
                  'sign in',
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
            hintText: 'enter your name',
            obscureText: false,
          ),
          const SizedBox(
            height: 20,
          ),
          MyTextField(
            prefixIcon: Icon(Icons.password),
            hintText: 'Password',
            obscureText: showPass ? false : true,
            onPressed: showPassword,
            icon: showPass ? Icons.visibility_off : Icons.visibility,
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 210),
                child: Text(
                  'Forget Password ?',
                  style: TextStyle(
                    color: Color.fromARGB(255, 10, 185, 121),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          const Bottom(
            text: 'Sign in',
            color: Color(0xff2ECC71),
          ),
          SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Or sign in With',
                style: TextStyle(
                  color: Color(0xff471AA0),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade700),
                ),
                child: Image.asset(
                  'assets/devicon_google.png',
                  width: 50,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade700),
                ),
                child: Image.asset(
                  'assets/logos_facebook.png',
                  width: 50,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade700),
                ),
                child: Image.asset(
                  'assets/pajamas_twitter.png',
                  width: 50,
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Container(
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey.shade700),
                ),
                child: Image.asset(
                  'assets/logos_linkedin-icon.png',
                  width: 50,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Dont have account ? ',
                style: TextStyle(
                  color: Color(0xff471AA0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SignUp(),
                    ),
                  );
                },
                child: Text(
                  'Signup',
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
    );
  }
}
