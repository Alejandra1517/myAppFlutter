import 'package:flutter/material.dart';
import 'package:flutter_application_1/favorites_page.dart';
import 'package:flutter_application_1/home_page.dart';
import 'package:flutter_application_1/library_page.dart';
import 'package:flutter_application_1/search_page.dart';

class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({super.key});

  @override
  _MyNavigationBarState createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  int _selectedIndex = 0;

  final List<BottomNavigationBarItem> _items = [
    const BottomNavigationBarItem(
      backgroundColor: Color.fromARGB(255, 35, 58, 36),
      icon: Icon(Icons.home),
      label: 'Inicio',
    ),
    const BottomNavigationBarItem(
      backgroundColor: Color.fromARGB(255, 35, 58, 36),
      icon: Icon(Icons.search),
      label: 'Buscar',
    ),
    const BottomNavigationBarItem(
      backgroundColor: Color.fromARGB(255, 35, 58, 36),
      icon: Icon(Icons.bookmarks_sharp),
      label: 'Biblioteca',
    ),
    const BottomNavigationBarItem(
      backgroundColor: Color.fromARGB(255, 35, 58, 36),
      icon: Icon(Icons.favorite),
      label: 'Favoritos',
    ),
  ];

  final List<Widget> _screens = [
    const Homepage(),
    const SearchPage(),
    const LibraryPage(),
    const FavoritesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: _items,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}




// class MyNavigationBar extends StatefulWidget {
//   @override
//   _MyNavigationBarState createState() => _MyNavigationBarState();
// }

// class _MyNavigationBarState extends State<MyNavigationBar> {
//   int _selectedIndex = 0;

//   List<BottomNavigationBarItem> _items = [
//     BottomNavigationBarItem(
//       icon: Icon(Icons.home),
//       label: 'Inicio',
//     ),
//     BottomNavigationBarItem(
//       icon: Icon(Icons.search),
//       label: 'Buscar',
//     ),
//     BottomNavigationBarItem(
//       icon: Icon(Icons.settings),
//       label: 'Configuración',
//     ),
//   ];

//   List<Widget> _screens = [
//     HomeScreen(),
//     SearchScreen(),
//     SettingsScreen(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: IndexedStack(
//         index: _selectedIndex,
//         children: _screens,
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         items: _items,
//         currentIndex: _selectedIndex,
//         onTap: (index) {
//           setState(() {
//             _selectedIndex = index;
//           });
//         },
//       ),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Pantalla de inicio'),
//     );
//   }
// }

// class SearchScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Pantalla de búsqueda'),
//     );
//   }
// }

// class SettingsScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Text('Pantalla de configuración'),
//     );
//   }
// }
