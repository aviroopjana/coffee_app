import 'package:flutter/material.dart';
import 'package:flutter_application_1/utility/coffee_tile.dart';
import 'package:flutter_application_1/utility/coffee_type.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list of coffee types
  // final List coffeeType = [
  //   // [coffeeType, isSelected]
  //   [
  //     'Cappacinno',
  //     true,
  //   ]
  // ];
  // //user tapped on coffee types
  // void CoffeeTypeSelected() {

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: const [
          Padding(
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
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 46, 37, 37),
              ),
              child: Text("CoffiCo.in"),
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

          const SizedBox(height: 25),

          //Search Bar

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  hintText: 'Search your Coffee',
                  focusedBorder: OutlineInputBorder(
                    //borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide(
                      width: 2.0,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600))),
            ),
          ),

          const SizedBox(height: 25),

          //Horizontal listview of Coffee types
          Container(
            height: 50,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                CoffeeType(
                  coffeeType: 'Cappucino',
                  isSelected: true,
                  //onTap: CoffeeTypeSelected,
                ),
                CoffeeType(
                  coffeeType: 'Espresso',
                  isSelected: false,
                  //onTap: CoffeeTypeSelected,
                ),
                CoffeeType(
                  coffeeType: 'Americano',
                  isSelected: false,
                  //onTap: CoffeeTypeSelected,
                ),
              ],
            ),
          ),

          //const SizedBox(height: 10),
          //Horizontal listview of coffee tiles

          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                CoffeeTile(),
                CoffeeTile(),
                CoffeeTile(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
