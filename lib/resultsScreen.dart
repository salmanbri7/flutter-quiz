import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("some number , good job"),
            SizedBox(height: 20),
            Text("ur answers"),
            SizedBox(height: 20),
            TextButton(onPressed: () {}, child: Text("ali aref restart"))
          ],
        ),
      ),
    );
  }
}
