import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Icon(Icons.search, color: Colors.blue, size: 24.0),
          SizedBox(width: 16),
          Icon(Icons.exit_to_app, color: Colors.blue, size: 24.0),
          SizedBox(width: 16),
        ],
        title: const Center(child: Text('Demo Mobile App')),
        leading: const Icon(Icons.menu, color: Colors.black, size: 24.0),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "First Line",
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            const SizedBox(height: 16),
            const Icon(Icons.settings, color: Colors.blue, size: 48.0),
            const SizedBox(height: 16),
            Row(
              children: [
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.red,
                  child: const Text("Hello"),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                  child: const Text("Hello"),
                ),
                Container(
                  width: 200,
                  height: 200,
                  color: Colors.green,
                  child: const Text("Hello"),
                ),
              ],
            ),
            const SizedBox(width: 16),
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                'https://scontent.fbkk29-1.fna.fbcdn.net/v/t1.15752-9/500534689_559969883856794_2755683144608310384_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=9f807c&_nc_eui2=AeGLd1WK9ohJ40wfEkXQ1WxUoohLWoWeJROiiEtahZ4lE6RR2P9_L414L9498je2CMdzoRjDg-OXFDz5ksDuRr4c&_nc_ohc=BvQnBtZNFvwQ7kNvwEbzwAY&_nc_oc=Adk0NXWVix6S-RO2oPKZiMo7bqg0Odt0xdUl9tjzwK65c1B9u1Eyb0XGZUmodSxyiD4&_nc_zt=23&_nc_ht=scontent.fbkk29-1.fna&oh=03_Q7cD4AFS02Z_iMkXKjuN__Kk9Puax-wpsaLT6-VKAhJpbXrCCA&oe=6971C4FA',
              ),
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        backgroundColor: Colors.green[50],
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
