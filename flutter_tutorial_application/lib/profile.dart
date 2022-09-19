import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Profile Page"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.home),
        ),
      ),
      body: Column(
        children: [
          Image.asset("images/a.jpg"),
          const Divider(color: Colors.black),
          Container(
            color: Colors.blueGrey,
            width: double.infinity,
            child: const Center(
              child: Text(
                "This is einstein",
                style: TextStyle(color: Colors.red, fontSize: 32),
              ),
            ),
          )
        ],
      ),
    );
  }
}
