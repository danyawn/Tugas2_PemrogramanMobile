import 'package:flutter/material.dart';
import 'package:tugas1/components/button.dart';
import 'package:tugas1/components/text_field.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // text editing controller
  final userController = TextEditingController();
  final passController = TextEditingController();
  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),

              //logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 50),
              // welcome back
              Text(
                'Selamat Datang!',
                style: TextStyle(
                  color: Colors.grey[700],
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 25),
              // username
              MyTextField(
                controller: userController,
                hintText: 'Username',
                obscureText: false,
              ),

              const SizedBox(
                height: 10,
              ),
              // password
              MyTextField(
                controller: passController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 50),
              // sign in button
              Button(
                onTap: signUserIn,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
