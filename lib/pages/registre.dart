import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:refrech/compenent/mybtn.dart';
import 'package:refrech/compenent/mytextfeild.dart';

class Registre extends StatefulWidget {
  const Registre({super.key});


  @override
  State<Registre> createState() => _RegistreState();
}

class _RegistreState extends State<Registre> {
  
  final emailcontroller = TextEditingController();
  final passwordcontroller = TextEditingController();
  final corrpasswordcontroller = TextEditingController();
  bool visubilityy = false;
  bool visubilityy2 = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade500,
        title: const Text('R E G I S T R E'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 120,
          ),
          const Center(
              child: Icon(
            IconlyBroken.add_user,
            size: 120,
          )),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mytextfeild(
              text: 'Emaill',
              obscure: false,
              controller: emailcontroller,
              icon: const Icon(Icons.email),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mytextfeild(
              text: 'Password',
              obscure: visubilityy ? false : true,
              controller: passwordcontroller,
              icon: IconButton(
                  onPressed: () {
                    setState(() {
                      visubilityy = !visubilityy;
                    });
                  },
                  icon: Icon(
                      visubilityy ? Icons.visibility : Icons.visibility_off)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Mytextfeild(
              text: 'correct Password',
              obscure: visubilityy2 ? false : true,
              controller: corrpasswordcontroller,
              icon: IconButton(
                  onPressed: () {
                    setState(() {
                      visubilityy2 = !visubilityy2;
                    });
                  },
                  icon: Icon(
                      visubilityy2 ? Icons.visibility : Icons.visibility_off)),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Mybtn(text: "Registre", onPressed: () {})
        ],
      ),
    );
  }
}
