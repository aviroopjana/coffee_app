import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bottom_navbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Text("Header"),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 46, 37, 37),
              ),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                // Navigate to the first screen
              },
            ),
            ListTile(
              title: const Text('Favourites'),
              onTap: () {
                // Navigate to the second screen
              },
            ),
            ListTile(
              title: const Text('Notification'),
              onTap: () {
                // Navigate to the second screen
              },
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          // Find the best coffee for you
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Find the best coffee for you",
                style: GoogleFonts.bebasNeue(
                  fontSize: 60,
                ),
              )),

          const SizedBox(height: 10),

          //Search Bar
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
                borderSide: const BorderSide(
                  width: 2.0,
                ),
              ),
              labelText: 'Search Coffee',
            ),
          ),

          //Horizontal listview of coffee tiles
        ],
      ),
    );
  }
}
