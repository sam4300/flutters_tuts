import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Scaffold Properties'),
            backgroundColor: Colors.green,
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: "Settings",
                ),
                Tab(
                  icon: Icon(Icons.local_grocery_store),
                  text: "Store",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              HomePage(),
              Settings(),
              Store(),
            ],
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.all(8.0),
              children: [
                UserAccountsDrawerHeader(
                  currentAccountPicture: Container(
                    height: 40.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                        image: AssetImage('assets/Av.jpg'),
                      ),
                    ),
                  ),
                  accountName: Text('Samar Thapa'),
                  accountEmail: Text('thapassmar48@gmail.com'),
                ),
                ListTile(
                  leading: Icon(
                    Icons.home,
                  ),
                  title: Text('Home'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.account_box,
                  ),
                  title: Text('Account'),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                  ),
                  title: Text('Settings'),
                  onTap: () {},
                ),
              ],
            ),
          ),

        ),
      ),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Hello');
  }
}
class Settings extends StatelessWidget {
  const Settings({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Welcome to settings');
  }
}
class Store extends StatelessWidget {
  const Store({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('Welcome to store page');
  }
}

