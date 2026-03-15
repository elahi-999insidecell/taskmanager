import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:taskmanager/ui/screens/loginpage.dart';
import 'package:taskmanager/ui/screens/pin_verify.dart';
import 'package:taskmanager/ui/utils/screen_background.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenBackground(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 90),
                Text(
                  "Join With Us",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 10),
                TextFormField(decoration: InputDecoration(hintText: "Email")),
                const SizedBox(height: 15),
                TextFormField(
                  decoration: InputDecoration(hintText: "First Name"),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  decoration: InputDecoration(hintText: "Last Name"),
                ),
                const SizedBox(height: 15),
                TextFormField(decoration: InputDecoration(hintText: "Mobile")),
                const SizedBox(height: 15),
                TextFormField(
                  decoration: InputDecoration(hintText: "Password"),
                ),
                const SizedBox(height: 20),
                FilledButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PinVerify()),
                    );
                  },
                  child: Icon(Icons.arrow_forward),
                ),
                SizedBox(height: 20),
                Center(
                  child: RichText(
                    text: TextSpan(
                      text: "Have Account? ",
                      style: TextStyle(color: Colors.black, fontSize: 16),
                      children: [
                        TextSpan(
                          text: "Sign in",
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),

                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => LogInPage(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
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
