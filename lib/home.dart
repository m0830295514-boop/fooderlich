import 'package:flutter/material.dart';
import 'package:fooderlich/card1.dart';
import 'card2.dart';
import 'card3.dart';
 
class Home extends StatefulWidget {
  const Home({super.key});
 
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}
 
class _HomeState extends State<Home> {
 
  int _selectedIndex = 0;
 
  @override
  Widget build(BuildContext context) {
 
    // 8
    List<Widget> pages = <Widget>[
      Card1(),
      Card2(),
      Card3(),
      ];
 
    void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      }
    );
  }
 
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Fooderlich',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        body: pages[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: onItemTapped,
          items:
            const [
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                label: 'Card 1',
                ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                label: 'Card 2',
                ),
              BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard),
                label: 'Card 3',
                ),
            ],
        ),
    );
  }
}