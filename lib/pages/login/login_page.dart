import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pigeon/widgets/custom_widgets.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          width: MediaQuery.of(context).size.width * .5,
          child: Card(
            elevation: 20,
            margin: const EdgeInsets.all(16.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GradientText(
                    'L O G I N',
                    gradientType: GradientType.linear,
                    gradientDirection: GradientDirection.btt,
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold, fontSize: 30),
                    colors: const [
                      // Colors.white,
                      Colors.red,
                      // Colors.white,
                      Colors.purple,
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          // Add forget password functionality here
                        },
                        child: const Text('Forget Password?'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Add login functionality here
                    },
                    child: const Text('Login'),
                  ),
                  sizedBoxHeight(50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Don\'t have an Account? ',
                      ),
                      TextButton(
                        onPressed: () {
                          // Add create account functionality here
                        },
                        child: const Text('Create Account'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

