import 'package:flutter/material.dart';
import 'package:flutter_application_1/menu.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  static final List<Widget> _pages = <Widget>[
    TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    ),
    const Menu(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.cyan,
        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Container(
                width: 240,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Center(
                  child: TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search_outlined),
                        hintText: 'Search Freelancers',
                        border: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(width: 0),
              IconButton(onPressed: (){}, icon: const Icon(Icons.send)),
              const SizedBox(width: 0),
              IconButton(onPressed: (){}, icon: const Icon(Icons.notifications)),
            ],
          ),
        ),
      ),
      body: Center(
        child: _pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (Index) {
          setState(
            () {
              _selectedIndex = Index;
            },
          );
        },
        selectedFontSize: 20,
        selectedIconTheme: const IconThemeData(color: Colors.cyan),
        selectedItemColor: Colors.cyan,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Menu',
          ),
        ],
      ),
    );
  }
}
