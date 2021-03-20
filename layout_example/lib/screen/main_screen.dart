
import 'package:flutter/material.dart';
import 'package:layout_example/page.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  void onIndexChanged(int index) {
    setState(() {
      currentIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: [
          // UserAccountsDrawerHeader(
          //     currentAccountPicture:
          //         CircleAvatar(backgroundImage: NetworkImage("")),
          //     accountName: Text("Chonlatee"),
          //     accountEmail: Text("chonlatee.intapanya@gmail.com")),
          DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://i.pinimg.com/originals/af/8d/63/af8d63a477078732b79ff9d9fc60873f.jpg"),
                      fit: BoxFit.cover)),
              child: Center(
                child: Column(
                  children: [
                    CircleAvatar(backgroundImage: NetworkImage("https://media.istockphoto.com/photos/closeup-of-lion-panthera-leo-8-years-old-in-front-of-white-background-picture-id944272094?k=6&m=944272094&s=612x612&w=0&h=J4pjHVFfW10BaZ4bZ06sirxbNdcw4rBu4DDkVHflMSk=")),
                  ],
                ),
              )),
          ListTile(
            onTap:(){
              Navigator.pushNamed(context, '/history');
            },
            leading: Icon(Icons.people),
            title: Text("ประวัติ"),

          ),
          ListTile(
            onTap:(){
              Navigator.pushNamed(context, '/credit');
            },
            leading: Icon(Icons.people),
            title: Text("credit"),

          )
        ],
      )),
      appBar: AppBar(
        title: Text(pages[currentIndex].title),
      ),
      body: pages[currentIndex].page,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onIndexChanged,
        items: pages
            .map(
              (page) => BottomNavigationBarItem(
                icon: page.icon,
                label: page.label,
              ),
            )
            .toList(),
      ),
      );
  }
}
