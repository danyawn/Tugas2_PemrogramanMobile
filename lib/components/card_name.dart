import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CardName extends StatelessWidget {
  final hintName;
  final hintNim;
  final hintKelas;

  const CardName({
    super.key,
    required this.hintName,
    required this.hintNim,
    required this.hintKelas,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Card(
        elevation: 20,
        shadowColor: Colors.grey[500],
        color: Colors.grey[200],
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Container(
          height: 200,
          width: 500,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  '${hintName}',
                  style: const TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                Text(
                  '${hintNim}',
                  style: const TextStyle(fontSize: 20),
                ),
                SizedBox(height: 20),
                Text(
                  '${hintKelas}',
                  style: const TextStyle(fontSize: 20),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
