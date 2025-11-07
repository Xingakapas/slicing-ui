import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Homepage(),
    );
  }
}

class Mnkereta extends StatelessWidget {
  final String text;
  final Widget icon;
  const Mnkereta({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.purpleAccent,
          ),
          child: icon,
        ),
        const SizedBox(height: 10),
        Text(text, style: const TextStyle(fontSize: 15)),
      ],
    );
  }
}

class Menuatas extends StatelessWidget {
  const Menuatas({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Selamat Pagi",
                style: TextStyle(fontSize: 15, color: Colors.white),
              ),
              const Text(
                "Fulan Bin Fulan",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
          Row(
            children: [
              const Buttonmn(),
              const SizedBox(width: 10),
              const Buttonmn(),
              const SizedBox(width: 10),
              const Buttonmn(),
            ],
          ),
        ],
      ),
    );
  }
}

class Kartukaimn extends StatelessWidget {
  final String text;
  final Widget icon;
  const Kartukaimn({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        icon,
        Text(text, style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class Kartukai extends StatelessWidget {
  const Kartukai({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 20,
      right: 20,
      bottom: -60,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(color: Colors.grey, blurRadius: 3, offset: Offset(0, 1)),
          ],
        ),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 150,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Center(
                          child: Text(
                            "KAUPAYS",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 8),
                      const Row(
                        children: [
                          Text(
                            "Rp. 500.000",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.chevron_right),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 60, child: VerticalDivider()),
                Expanded(
                  flex: 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Kartukaimn(
                        icon: Icon(
                          Icons.qr_code_scanner,
                          color: Colors.blueAccent,
                          size: 35,
                        ),
                        text: "scan",
                      ),
                      Kartukaimn(
                        icon: Icon(
                          Icons.account_balance_wallet,
                          color: Colors.blueAccent,
                          size: 35,
                        ),
                        text: "top up",
                      ),
                      Kartukaimn(
                        icon: Icon(
                          Icons.history,
                          color: Colors.blueAccent,
                          size: 35,
                        ),
                        text: "riwayat",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Divider(thickness: 1, height: 20, color: Colors.grey),
            Row(
              children: [
                Row(
                  children: [
                    Icon(Icons.monetization_on, color: Colors.amber),
                    const SizedBox(width: 5),
                    const Text("0 Railpoints"),
                  ],
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.blue.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.star_border_outlined),
                      Text("basic"),
                      Icon(Icons.chevron_right),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Buttonmn extends StatelessWidget {
  const Buttonmn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white.withOpacity(0.4),
      ),
      child: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.notifications, size: 30, color: Colors.white),
      ),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.blue[800]!,
                        Colors.purple[700]!,
                      ],
                    ),
                  ),
                  child: const Menuatas(),
                ),
                const Kartukai(),
              ],
            ),
            const SizedBox(height: 80),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Mnkereta(
                      icon: Icon(Icons.train_outlined, size: 35, color: Colors.white),
                      text: "Lokal",
                    ),
                    const SizedBox(width: 15),
                    Mnkereta(
                      icon: Icon(Icons.airplanemode_active, size: 35, color: Colors.white),
                      text: "Pesawat",
                    ),
                    const SizedBox(width: 15),
                    Mnkereta(
                      icon: Icon(Icons.directions_bus, size: 35, color: Colors.white),
                      text: "Bus",
                    ),
                    const SizedBox(width: 15),
                    Mnkereta(
                      icon: Icon(Icons.hotel, size: 35, color: Colors.white),
                      text: "Hotel",
                    ),
                    const SizedBox(width: 15),
                    Mnkereta(
                      icon: Icon(Icons.fastfood, size: 35, color: Colors.white),
                      text: "Makanan",
                    ),
                    const SizedBox(width: 15),
                    Mnkereta(
                      icon: Icon(Icons.local_movies, size: 35, color: Colors.white),
                      text: "Event",
                    ),
                    const SizedBox(width: 15),
                    Mnkereta(
                      icon: Icon(Icons.more_horiz, size: 35, color: Colors.white),
                      text: "Lainnya",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
