import 'package:flutter/material.dart';
import 'Home.dart';

class LogIn extends StatelessWidget {
  /*final TextEditingController controller;
  final String hintText;
  final bool obscureText;*/

  LogIn({super.key});
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xffb38997),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Image.network(
                  'https://i.pinimg.com/736x/ce/57/82/ce57824d38e7921c16e0c621c13fedd6.jpg',
                  height: 250,
                  width: 400,
                  fit: BoxFit.cover,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "Welcome to our Trainiing Coures",
                  style: TextStyle(
                    color: Color(0xf7181717),
                    fontSize: 22,
                    fontFamily: 'sans-serif',
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    controller: usernameController,
                    obscureText: false,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffe8e3e3)),
                      ),
                      hintText: 'Username',
                      fillColor: Colors.grey.shade200,
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xffe8e3e3)),
                      ),
                      hintText: 'password',
                      fillColor: Colors.grey.shade200,
                      filled: true,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Home()),
                    );
                  },
                  child: const Text("Next"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
