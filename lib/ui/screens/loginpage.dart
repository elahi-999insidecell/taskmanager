import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taskmanager/ui/screens/forgetpassemail.dart';
import 'package:taskmanager/ui/screens/mainnavholder.dart';
import 'package:taskmanager/ui/screens/sign_up.dart';
import 'package:taskmanager/ui/utils/screen_background.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LoginpageState();
}

class _LoginpageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    void onTapForgetPassword() {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Forgetpassemail()),
      );
    }

    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 150),
                Text(
                  "Get Started With",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 20),
                TextFormField(decoration: InputDecoration(hintText: "Email")),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(hintText: "Password"),
                ),
                const SizedBox(height: 20),
                FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Mainnavholder()),
                    );
                  },
                  child: Icon(Icons.arrow_forward_ios_sharp),
                ),
                const SizedBox(height: 35),

                Center(
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {
                          onTapForgetPassword();
                        },
                        child: Text(
                          "Forget Password?",
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      RichText(
                        text: TextSpan(
                          text: "Don't have an account?",
                          children: [
                            TextSpan(
                              text: " Sign Up",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold,
                              ),

                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SignUp(),
                                    ),
                                  );
                                },
                            ),
                          ],
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
