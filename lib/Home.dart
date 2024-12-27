import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  Home({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.menu),
          actions: const [
            Icon(Icons.person),
          ],
          backgroundColor: const Color(0xff9b86a7),
        ),
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    suffixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Recommended for you",
                    style: TextStyle(
                      fontFamily: 'sans-serif',
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.network(
                    'https://i.pinimg.com/236x/86/ad/01/86ad01aac334ed269e9d33dab95a2217.jpg',
                    width: 80,
                    height: 80,
                  ),
                  Image.network(
                    'https://i.pinimg.com/236x/f3/24/1f/f3241f5f9d1c13b89f4415af16f16d95.jpg',
                    width: 100,
                    height: 100,
                  ),
                  Image.network(
                    'https://i.pinimg.com/236x/94/10/10/941010726f1082d9d84ed65a06ad6509.jpg',
                    width: 100,
                    height: 100,
                  ),
                ], //children
              ),
              SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Last seen courses",
                    style: TextStyle(
                      fontFamily: 'sans-serif',
                      fontSize: 24,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.grey), // إطار مشابه لـ TextField
                    borderRadius: BorderRadius.circular(10), // زوايا مستديرة
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Web Development course",
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                      const Icon(Icons.play_arrow, color: Colors.grey),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://i.pinimg.com/236x/90/bb/bb/90bbbbfd770343e1ce90810406460a8d.jpg',
                    height: 100,
                    width: 100,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print("Paid");
                    },
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(60, 50),
                        backgroundColor: Color(0xf3ea9bae)),
                    child: const Text("Tab to Pay"),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "profile",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "settings",
            ),
          ],
        ),
      ),
    );
  }
}
