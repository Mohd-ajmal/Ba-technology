import 'package:abinash/hooks/text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffe90101),
        elevation: 0,
      ),
      body: Stack(
        children: [
          Image.asset(
            "assets/images/background.jpg",
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Sign In",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 28.0,
                      fontFamily: "Latinotype - ShowcaseSans.otf"),
                ),
                SizedBox(height: 10.0),
                Text(
                  "Please Login To Using App",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontFamily: "Latinotype - ShowcaseSans.otf"),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30.0),
                CustomTextField(
                  name: "Email Address",
                  icon: const Icon(Icons.email),
                ),
                const SizedBox(height: 20.0),
                CustomTextField(
                  name: "Password",
                  icon: const Icon(Icons.password),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          value: true,
                          onChanged: null,
                          fillColor: MaterialStateProperty.all(
                              const Color(0xffe90101)),
                        ),
                        const Text("Remember"),
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          "Forget Password?",
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: SizedBox(
                  width: 200,
                  height: 40,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Sign in",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xffe90101),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "or ",
                    style: TextStyle(color: Colors.red, fontSize: 15.0),
                  ),
                  Text(
                    "Register a new account",
                    style: TextStyle(fontSize: 15.0),
                  ),
                ],
              ),
              const SizedBox(height: 30.0),
            ],
          )
        ],
      ),
    );
  }
}
