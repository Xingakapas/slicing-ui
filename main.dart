import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RestaurantMenu(),
    );
  }
}

class RestaurantMenu extends StatefulWidget {
  @override
  State<RestaurantMenu> createState() => _RestaurantMenuState();
}

class _RestaurantMenuState extends State<RestaurantMenu> {
  int selectedCategory = 0;

  final List<String> categories = ['Makanan', 'Minuman', 'Dessert'];
  final List<IconData> categoryIcons = [Icons.restaurant, Icons.local_drink, Icons.cake];

  final List<Map<String, dynamic>> foodItems = [
    {'name': 'menu1', 'price': 25000, 'category': 0},
    {'name': 'menu2', 'price': 35000, 'category': 0},

  ];

  void showItemDetail(Map<String, dynamic> item) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.fastfood, size: 60, color: Colors.orange),
              SizedBox(height: 10),
              Text(item['name'], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              SizedBox(height: 5),
              Text('Rp ${item['price']}', style: TextStyle(fontSize: 18, color: Colors.orange)),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('${item['name']} tambahkan')),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                child: Text('tambah pesan', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu Restoran'),
        backgroundColor: Colors.orange,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 80,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedCategory = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: selectedCategory == index ? Colors.orange : Colors.grey[200],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Icon(categoryIcons[index], color: selectedCategory == index ? Colors.white : Colors.grey),
                        SizedBox(height: 5),
                        Text(categories[index], style: TextStyle(color: selectedCategory == index ? Colors.white : Colors.grey)),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: foodItems.length,
              itemBuilder: (context, index) {
                final item = foodItems[index];
                if (item['category'] != selectedCategory) return SizedBox();
                
                return Card(
                  margin: EdgeInsets.all(8),
                  child: ListTile(
                    leading: Icon(Icons.fastfood, color: Colors.orange),
                    title: Text(item['name']),
                    subtitle: Text('Rp ${item['price']}'),
                    trailing: IconButton(
                      icon: Icon(Icons.add, color: Colors.orange),
                      onPressed: () => showItemDetail(item),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.orange,
        child: Icon(Icons.shopping_cart, color: Colors.white),
      ),
    );
  }
}