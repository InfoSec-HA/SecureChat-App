import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    const appBarColor = Color.fromARGB(255, 44, 158, 88);
    const iconColors = Color(0xFFEBEBEB);
    const fontColors = Color(0xFFEBEBEB);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              leadingWidth: 110,
              leading: Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_vert),
                      color: iconColors),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.camera_alt_rounded,
                    color: iconColors,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(Icons.search, color: iconColors)
                ],
              ),
              backgroundColor: appBarColor,
              title: const Text("hello flutter",
                  style: TextStyle(color: fontColors)),
              centerTitle: true,
            ),
            body: Container(
                alignment: Alignment.center,
                child: Stack(
                  children: [getCard()],
                ))));
  }

  getImag() {
    return Container(
      margin: const EdgeInsets.all(20),
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          image: const DecorationImage(
              image: AssetImage("images/santorini.jpg"), fit: BoxFit.fill),
          border: Border.all(color: const Color(0xFF000000), width: 5),
          borderRadius: BorderRadius.circular(50)),
    );
  }

  getCard() {
    return Container(
      margin: const EdgeInsets.all(20),
      width: 350,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(10)),
      child: const Column(
        children: [
          Text(
            "Haitham Al shami",
            style: TextStyle(
                fontFamily: "DancingScript", fontSize: 30, color: Colors.white),
          ),
          Text("Email : haitham@gmail.com"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text("Phone Number: 777777777"), Icon(Icons.phone)],
          )
        ],
      ),
    );
  }
}
