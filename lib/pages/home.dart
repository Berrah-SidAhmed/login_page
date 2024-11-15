import 'package:flutter/material.dart';
import 'package:refrech/compenent/mybtn.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 190,
          ),
          Center(
              child: Image.asset(
            "assets/home.png",
            fit: BoxFit.fill,
            width: 120,
          )),
          const SizedBox(
            height: 160,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Mybtn(text: 'L O G I N', onPressed: () {}),
              const SizedBox(
                width: 12,
              ),
              Mybtn(text: 'R E G I S T R E', onPressed: () {})
            ],
          )
        ],
      ),
    );
  }
}
