import 'package:flutter/material.dart';
import 'package:flutter_tutorial_application/profile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (BuildContext context) {
            return const ProfilePage();
          }));
        },
        child: const Text("Learn Flutter"),
      ),
    );
  }
}
