import 'package:flutter/material.dart';
import 'package:tugas1/components/button.dart';
import 'package:tugas1/components/card_name.dart';
import 'package:tugas1/components/text_field.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

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
        child: Container(
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 50),
                // Member
                Text(
                  'Anggota Kelompok',
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),
                // username
                CardName(
                  hintName: "M. Lutfi Aminuddin Elyas",
                  hintNim: '123200032',
                  hintKelas: 'IF-A',
                ),

                const SizedBox(
                  height: 10,
                ),
                // password
                CardName(
                  hintName: "M. Nanda Fawwaz",
                  hintNim: '123200025',
                  hintKelas: 'IF-A',
                ),

                const SizedBox(
                  height: 10,
                ),
                // password
                CardName(
                  hintName: "Wayan Danu Tirta",
                  hintNim: '123200025',
                  hintKelas: 'IF-A',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
