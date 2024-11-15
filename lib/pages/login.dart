import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:refrech/compenent/mybtn.dart';
import 'package:refrech/compenent/mytextfeild.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}
  
class _LoginState extends State<Login> {
bool visubilityy = false;
    final emailcontreller = TextEditingController();
    final passwordcontreller = TextEditingController();
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade500,
        title: const Text('L O G I N'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 120,
          ),
          const Center(
              child: Icon(
            IconlyBroken.lock,
            size: 120,
          )),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mytextfeild(
              text: 'Email',
              obscure: false,
              controller: emailcontreller,
              icon: const Icon(Icons.email),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mytextfeild(
              text: 'Password',
              obscure: visubilityy ? false : true,
              controller: passwordcontreller,
              icon: IconButton(
                  onPressed: () {
                    setState(() {
                      visubilityy =! visubilityy;
                    });
                    

                  },
                  icon: Icon(
                      visubilityy ? Icons.visibility : Icons.visibility_off)),
            ),
          ),
          const SizedBox(height: 50,),
          Mybtn(text: "Login", onPressed: (){})
        ],
      ),
    );
  }
}
