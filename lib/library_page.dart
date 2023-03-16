import 'package:flutter/material.dart';

class LibraryPage extends StatelessWidget {
  const LibraryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Biblioteca"),
        backgroundColor: Colors.green[900],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Leídos recientemente",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Row(
            children: const [
              Padding(
                padding: EdgeInsets.only(right: 15, left: 10),
                child: Books(),
              ),
              Titles(),
              Padding(
                padding: EdgeInsets.all(10.0),
                child: Porcents(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Porcents extends StatelessWidget {
  const Porcents({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 30,
          width: 30,
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
          child: const Align(
              alignment: Alignment.center,
              child: Text("50%",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))),
        ),
        const SizedBox(height: 100),
        Container(
          height: 30,
          width: 30,
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
          child: const Align(
              alignment: Alignment.center,
              child: Text("13%",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))),
        ),
        const SizedBox(height: 100),
        Container(
          height: 30,
          width: 30,
          decoration: const BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.all(Radius.circular(100)),
          ),
          child: const Align(
              alignment: Alignment.center,
              child: Text("13%",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold))),
        ),
      ],
    );
  }
}

class Titles extends StatelessWidget {
  const Titles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: const [
            Text(
              "El psicoanalista",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            Text("John Katzenbach", style: TextStyle(color: Colors.grey)),
          ],
        ),
        const SizedBox(height: 100),
        Column(
          children: const [
            Text("El instituto",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text("Novela de Stephen King",
                style: TextStyle(color: Colors.grey)),
          ],
        ),
        const SizedBox(height: 80),
        Column(
          children: const [
            Text("El cuento número 13",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            Text(
              "Novela de Diane Setterfield",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}

class Books extends StatelessWidget {
  const Books({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 90,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/elpsicoanalista.png'),
              fit: BoxFit.cover, // ajusta la imagen a la caja
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          height: 100,
          width: 90,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/elinstituto.png'),
              fit: BoxFit.cover, // ajusta la imagen a la caja
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          height: 100,
          width: 90,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/elcuentonumero13.png'),
              fit: BoxFit.cover, // ajusta la imagen a la caja
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
      ],
    );
  }
}
