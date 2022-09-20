import 'package:flutter/material.dart';
import 'package:todo_list/constants/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: todoBGcolor,
      appBar: buildAppBar(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
              ),
              child: const TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0),
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    hintText: "Search",
                    prefixIconConstraints: BoxConstraints(
                      maxHeight: 20,
                      minWidth: 25,
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      backgroundColor: todoBGcolor,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(
            Icons.menu,
            color: todoBlack,
            size: 30,
          ),
          SizedBox(
            child: CircleAvatar(
              child: Image.asset("lib/assets/avatar.jpg"),
            ),
            width: 40,
            height: 40,
          )
        ],
      ),
    );
  }
}
