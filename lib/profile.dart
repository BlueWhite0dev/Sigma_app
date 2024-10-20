import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool checkBoxNotifications = true;
  bool checkBoxSound = true;

  @override
  Widget build(BuildContext context) {
    final cardWidth = MediaQuery.of(context).size.width - 40;
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      ),
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(253, 247, 239, 1),
                    shape: BoxShape.circle,
                  ),
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.width * 0.4,
                  child: const Padding(
                    padding: EdgeInsets.all(40),
                    child: Image(
                      image: AssetImage('assets/img/sigma.png'),
                    ),
                  ),
                ),
                const Text(
                  'James John',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(253, 247, 239, 1),
                    shape: BoxShape.circle,
                  ),
                  width: cardWidth,
                  height: cardWidth,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: const AssetImage('assets/img/fire.png'),
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: MediaQuery.of(context).size.width * 0.5,
                      ),
                      const Gap(35),
                      const Text(
                        '5 dni',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            Column(
              children: [
                Row(
                  children: [
                    const Text(
                      'Powiadomienia',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Checkbox(
                      value: checkBoxNotifications,
                      activeColor: const Color.fromRGBO(214, 99, 32, 1),
                      onChanged: (bool? value) {
                        setState(() {
                          checkBoxNotifications = value ?? false;
                        });
                      },
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      'Efekty dźwiękowe',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    Checkbox(
                      value: checkBoxSound,
                      activeColor: const Color.fromRGBO(214, 99, 32, 1),
                      onChanged: (bool? value) {
                        setState(() {
                          checkBoxSound = value ?? false;
                        });
                      },
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
