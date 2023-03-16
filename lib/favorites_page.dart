import 'package:flutter/material.dart';

import 'favorites_list.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Lista de favoritos",
          style: TextStyle(fontSize: 15),
        ),
        backgroundColor: Colors.green[900],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            itemCount: books.length,
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
            itemBuilder: (BuildContext context, int index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      books[index]['Imagen'],
                      scale: 2.0,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        "${books[index]['Titulo']}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      Text(
                        "${books[index]['Autor']}",
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  const Icon(Icons.favorite)
                ],
              );
            }),
      ),
    );
  }
}
