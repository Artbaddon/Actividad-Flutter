import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const appTitle = "Extremoduro Best Albums";

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      color: Colors.pinkAccent,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;
  
  static final List<Widget> _widgetOptions = <Widget>[
    CodingLanguagesList(),
    CardExample(),
  
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        centerTitle: true,
        title: Text(widget.title),
        foregroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications_none_outlined),
            tooltip: "Mostrando notificaciones",
            onPressed: () {
              // Implement notification functionality
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('No new notifications')),
              );
            },
          ),
        ],
        leading: Builder(
          builder: (context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      body: Center(child: _widgetOptions[_selectedIndex]),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.pinkAccent,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/img/extremo1.jpg'),
                  opacity: 0.3,
                ),
              ),
              child: Text(
                'Agíla',
                style: TextStyle(color: Colors.white, fontSize: 50),
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text('Lista'),
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.headphones),
              title: Text('CardView'),
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class CodingLanguagesList extends StatelessWidget {
  CodingLanguagesList({super.key});
  final List<String> languages = [
    'JavaScript',
    'TypeScript',
    'Kotlin',
    'Dart',
    'Java',
    'Python',
    'C++',
    'Swift',
    'Ruby',
    'Go',
    'Rust',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: languages.length,
      separatorBuilder: (context, index) => Divider(),
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: Icon(Icons.code, color: Colors.pinkAccent),
            title: Text(
              languages[index],
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
           
            
          ),
        );
      },
    );
  }
}


class Album {
  final String title;
  final String description;
  final String imagePath;

  Album({required this.title, required this.description, required this.imagePath});
}

final List<Album> albums = [
  Album(
    title: "Rock transgresivo",
    description: "Descripción del álbum Rock transgresivo",
    imagePath: "assets/img/extremoduro1.jpg",
  ),
  Album(
    title: 'Somos unos animales',
    description: 'Segundo álbum de la banda, publicado en 1991. Incluye temas emblemáticos y consolida el sonido transgresivo del grupo.',
    imagePath: 'assets/img/extremo2.jpg',
  ),
   Album(
    title: 'Deltoya',
    description: 'Deltoya es el tercer álbum de Extremoduro, lanzado en 1992. Es conocido por su estilo poético y colaboraciones con otros artistas.',
    imagePath: 'assets/img/extremo3.jpg',
  ),
   Album(
    title: "¿Dónde están mis amigos?",
    description: "Descripción del álbum ¿Dónde están mis amigos?",
    imagePath: "assets/img/extremoduro4.jpg",
  ),
   Album(
    title: 'Pedrá',
    description: 'Pedrá es un álbum experimental de una sola canción larga, publicado en 1995.',
    imagePath: 'assets/img/extremo5.jpg',
  ),
    Album(
    title: 'Agíla',
    description: 'Agíla es el sexto álbum de estudio de Extremoduro, publicado en 1996. Considerado uno de los mejores discos de rock en español.',
    imagePath: 'assets/img/extremoduro6.jpg',
  ),
    Album(
    title: 'Canciones prohibidas',
    description: 'Canciones prohibidas es el septimo álbum de estudio de Extremoduro, publicado en 1996. Considerado uno de los mejores discos de rock en español.',
    imagePath: 'assets/img/extremoduro7.jpg',
  ),
  Album(
    title: 'Yo, Minoria aboluta',
    description: 'Yo, minoría absoluta es el título del octavo álbum de estudio de la banda de rock española Extremoduro, producido por Iñaki “Uoho” Antón y publicado por DRO el 5 de marzo de 2002. El álbum fue grabado en los estudios Cube de Madrid entre octubre y noviembre de 2001. El disco fue certificado como disco de platino en España por ventas superiores a 100 000 copias.',
    imagePath: 'assets/img/extremoduro8.jpg',
  ),

  Album(
    title: 'La Ley Innata',
    description: 'La Ley Innata es el séptimo álbum de estudio de Extremoduro, lanzado en 2008. Este álbum destaca por su complejidad musical y letras introspectivas.',
    imagePath: 'assets/img/extremoduro9.jpg',
  ),
 
 
  Album(
    title: 'Material defectuoso',
    description: 'Material defectuoso es el noveno álbum de estudio, lanzado en 2011. Destaca por su madurez lírica y musical.',
    imagePath: 'assets/img/extremoduro10.jpg',
  ),
 
 
];

class CardExample extends StatelessWidget {
  const CardExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: albums.length,
      separatorBuilder: (context, index) => Divider(),
      itemBuilder: (context, index) {
        final album = albums[index];
        return Center(
          child: Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(width: 10),
                Image(image: AssetImage(album.imagePath)),
                ListTile(
                  leading: Icon(Icons.album),
                  title: Text(album.title),
                  subtitle: Text(album.description),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Text('BUY TICKETS'),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 8),
                    TextButton(
                      child: const Text('LISTEN'),
                      onPressed: () {},
                    ),
                    const SizedBox(width: 8),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

