import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  State<MainApp> createState() => _MainAppState();

  Widget build(BuildContext context) {
    final cardWidth = MediaQuery.of(context).size.width - 40;
    return MaterialApp(
      theme: ThemeData(
          scaffoldBackgroundColor: const Color.fromRGBO(253, 247, 239, 1)),
      home: Column(
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
          const Column(
            children: [
               Row(
                children: [
                  Text(
                    'Powiadomienia',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                   Text(
                    'Efekty dźwiękowe',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      decoration: TextDecoration.none,
                    ),
                  ),
                  Checkbox(
                      value: true,
                      activeColor: Color.fromRGBO(214, 99, 32, 1),
                      tristate: true,
                      onChanged: (newBool){
                        SetState((){
                          isChecked = newBool;
                        })
                      },),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
