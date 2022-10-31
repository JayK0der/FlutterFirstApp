import 'package:flutter/material.dart';

void main() {
  runApp(const MyHomePage());
}

class MyHomePage extends StatelessWidget {

  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
              backgroundColor: Colors.red,
              title: const Text("My First App", textAlign: TextAlign.start)
          ),
          body: const Center(
            child: Text("Hello World", style: TextStyle(fontSize: 30)),
          ),
          floatingActionButton: FloatingActionButton(
              elevation: 10,
              backgroundColor: Colors.red,
              child: const Icon(Icons.add), onPressed: () {}),

          drawer: Drawer(
            child: ListView(

              children: const <Widget>[

                DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),

                  child: null,
                ),

                ListTile(title: Text("Item 1"), leading: Icon(Icons.person),),
                ListTile(title: Text("Item 2"), leading: Icon(Icons.email),),
                ListTile(title: Text("Item 3"), leading: Icon(Icons.settings),),
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
              items: const [
                BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", ),
                BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorites"),
                BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined), label: "Profile")
              ],
              onTap: (int indexOfItem){},
          ),
        )
    );
  }
}