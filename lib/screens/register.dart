import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {

    final TextEditingController emailController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 40,),


                TextField(
                 controller: emailController,
                 decoration: InputDecoration(
                    labelText: "Email",
                    prefixIcon: const Icon(Icons.email),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                 ),
                 keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20,),

                TextField(
                 controller: emailController,
                 decoration: InputDecoration(
                    labelText: "Name",
                    prefixIcon: const Icon(Icons.person_pin_outlined),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                 ),
                 keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(height: 20,)

              ],
            ),
          ),
        ),
      ),
    );
  }
}