import 'package:flutter/material.dart';

class navigate_test extends StatefulWidget {
  const navigate_test({Key? key}) : super(key: key);

  @override
  navigate_testState createState() => navigate_testState();
}

class navigate_testState extends State<navigate_test> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context)=>const homeScreen(),
        '/contact':(context)=>const contacts(),
      },
    );
  }
}

Widget navDraw(context)=> Drawer(
  child: ListView(
    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: const BoxDecoration(color: Colors.blueAccent),
          child: Container(height: 100,)),
      ListTile(
        leading: Icon(Icons.home),
        title: const Text("Главная"),
        onTap: (){
          Navigator.pushNamed(context, '/');
        },
      ),
      ListTile(
        leading: Icon(Icons.contact_support),
        title: const Text("Контакты"),
        onTap: (){
          Navigator.pushNamed(context, '/contact');
        },
      ),
      Divider(color: Colors.black12),
      ListTile(
        leading: Icon(Icons.settings),
        title: const Text("Настройки"),
        onTap: (){
          Navigator.pushNamed(context, '/settings');
        },
      ),
    ],
  ),
);

class homeScreen extends StatelessWidget {
  const homeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: navDraw(context),

      body: Center(
          child: Text("Главный экран"),

      ),
      bottomNavigationBar: _DemoBottomAppBar(
        fabLocation: FloatingActionButtonLocation.endDocked,
        shape: const CircularNotchedRectangle(),
      ),
    );
  }
}

class contacts extends StatelessWidget {
  const contacts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: navDraw(context),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 25),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
                Text("Контакты"),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton:
           FloatingActionButton(
             onPressed: () {},

             tooltip: 'Create',
             child: const Icon(Icons.help_outline),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: _DemoBottomAppBar(
        fabLocation: FloatingActionButtonLocation.endDocked,
        shape: const CircularNotchedRectangle(),
      ),
    );
  }
}

class _DemoBottomAppBar extends StatelessWidget {
  const _DemoBottomAppBar({
    this.fabLocation = FloatingActionButtonLocation.endDocked,
    this.shape = const CircularNotchedRectangle(),
  });

  final FloatingActionButtonLocation fabLocation;
  final NotchedShape? shape;

  static final List<FloatingActionButtonLocation> centerLocations =
  <FloatingActionButtonLocation>[
    FloatingActionButtonLocation.centerDocked,
    FloatingActionButtonLocation.centerFloat,
  ];

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: shape,
      color: Colors.blue,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: <Widget>[
            IconButton(
              tooltip: 'Open navigation menu',
              icon: const Icon(Icons.menu),
              onPressed: () {},
            ),
            if (centerLocations.contains(fabLocation)) const Spacer(),
            IconButton(
              tooltip: 'Search',
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              tooltip: 'Favorite',
              icon: const Icon(Icons.favorite),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
