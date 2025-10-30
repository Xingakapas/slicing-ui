import 'package:flutter/material.dart';
import 'package:slicing_ui1/komponen/komponen_ui_1.dart';

class Page01 extends StatelessWidget {
  const Page01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: AlignmentDirectional.topCenter,
                  end: AlignmentDirectional.bottomCenter,
                  colors: [Colors.pinkAccent, Colors.white],
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 20,
                    children: [
                      SizedBox(
                        width: 350,
                        child: TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            filled: true,
                            fillColor: const Color.fromARGB(255, 230, 229, 229),
                            hintText: 'Mau makan apa hari ini?',
                            hintStyle: TextStyle(color: Colors.grey),
                          ),
                        ),
                      ),
                      CircleAvatar(),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 30,
                    children: [
                      Text(
                        "Menu favorit anda",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 200,
                        width: 200,
                        child: Image.asset('assets/fast food.png'),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 20,
                    children: [
                      KomponenUi1(
                        logo: 'assets/burger.png',
                        text: 'Promo trus',
                      ),
                      KomponenUi1(logo: 'assets/store.png', text: 'Restoran'),
                      KomponenUi1(
                        logo: 'assets/orange-juice.png',
                        text: 'Minuman',
                      ),
                      KomponenUi1(
                        logo: 'assets/vegetables.png',
                        text: 'Buah & Sayur',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}