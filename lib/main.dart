
import 'package:flutter/material.dart';
import 'package:recetas/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Recestas Caseras Cubanas",
      home: const Home(),
      theme: ThemeData(useMaterial3: true),
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      "Desayunos",
    ),
    Text(
      "Comidas",
    ),
    Text(
      "Postres",
    ),
    Text(
      "Bebidas",
    ),
  ];

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                Icons.menu,
                size: 40.0,
                color: Colors.white,
                shadows: <Shadow>[Shadow(color: Colors.black54, offset: Offset(0.0, 2.0), blurRadius: 3)],
                ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
        titleTextStyle: const TextStyle(
          fontSize: 20.0,
          shadows: <Shadow>[Shadow(color: Colors.black, offset: Offset(0.0, 2.0), blurRadius: 5)],
        ),
        title: const Text(
          "Recestas Caseras Cubanas",
        ),
        backgroundColor: const Color.fromARGB(255, 6, 109, 10),
        flexibleSpace: Container(decoration: const BoxDecoration(gradient: LinearGradient(colors:[Colors.green, Color.fromARGB(255, 30, 182, 35)]))),
        // shadowColor: const Color.fromARGB(255, 14, 14, 14),
        centerTitle: true,
      ),

      drawer: Drawer(
        elevation: 100,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Messages'),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
          ],
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 7),
        physics:const BouncingScrollPhysics(decelerationRate:ScrollDecelerationRate.fast),
        children: <Widget>[
          
          myCard(),
          myCard(),
          myCard(),
          myCard(),
          myCard(),
          myCard(),
          myCard(),
          myCard(),

        ],
        ),

      bottomNavigationBar: BottomNavigationBar(

        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.breakfast_dining_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dinner_dining_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.broadcast_on_home_outlined),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.coffee_maker_outlined),
            label: '',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color.fromARGB(255, 0, 0, 0),
        unselectedItemColor: const Color.fromARGB(255, 102, 100, 100),
        iconSize: 30.0,
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: _onItemTapped
      ),
    );
  }
}
