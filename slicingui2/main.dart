import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: tugas(),
    );
  }
}

class tugas extends StatelessWidget {
  const tugas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(width: 200, height: 20, color: Colors.grey[400]),
                    const SizedBox(height: 8),
                    Container(width: 150, height: 20, color: Colors.grey[400]),
                  ],
                ),
                
                Row(
                  children: [
                    Container(width: 40, height: 40, color: Colors.grey[400]),
                    const SizedBox(width: 8),
                    Container(width: 40, height: 40, color: Colors.grey[400]),
                  ],
                )
              ],
            ),
            const SizedBox(height: 24),

            
            Container(
              width: double.infinity,
              height: 150,
              color: Colors.grey[300],
            ),
            const SizedBox(height: 24),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 70, height: 70, color: Colors.grey[400]),
                Container(width: 70, height: 70, color: Colors.grey[400]),
                Container(width: 70, height: 70, color: Colors.grey[400]),
                Container(width: 70, height: 70, color: Colors.grey[400]),
              ],
            ),
            const SizedBox(height: 24),

            
            Container(
              width: double.infinity,
              height: 100,
              color: Colors.grey[300],
            ),
            const SizedBox(height: 24),

            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(width: 150, height: 100, color: Colors.grey[400]),
                Container(width: 150, height: 100, color: Colors.grey[400]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}