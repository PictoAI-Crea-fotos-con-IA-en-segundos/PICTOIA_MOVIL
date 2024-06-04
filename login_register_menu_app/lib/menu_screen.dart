import 'package:flutter/material.dart';
import 'inicio_screen.dart';
import 'profile_screen.dart';
import 'settings_screen.dart';
class MenuScreen extends StatefulWidget {
  final String token;
  final Map<String, dynamic> user;

  MenuScreen({required this.token, required this.user});

  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 20),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: Container(
          color: Colors.purple, // Fondo morado
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.purple, // Fondo del header morado
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage('assets/logo.jpeg'),
                    ),
                    SizedBox(width: 10),
                    Text(
                      'PictoAI',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                leading: Icon(Icons.home, color: Colors.white),
                title: Text(
                  'Inicio',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => InicioScreen()),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.person, color: Colors.white),
                title: Text(
                  'Mi perfil',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen(user: widget.user)),
                  );
                },
              ),
              ListTile(
                leading: Icon(Icons.image, color: Colors.white),
                title: Text(
                  'Generar Imagen',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.favorite, color: Colors.white),
                title: Text(
                  'Favoritos',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.settings, color: Colors.white),
                title: Text(
                  'Configuración',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                onTap: ()  {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()),
                  );
                },
              ),
              Divider(color: Colors.white54),
              ListTile(
                leading: Icon(Icons.logout, color: Colors.white),
                title: Text(
                  'Log Out',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                ),
                onTap: () {
                  Navigator.pushReplacementNamed(context, '/login');
                },
              ),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        title: Text('PictoAI Menu'),
        backgroundColor: Colors.purple,
      ),
      body: Stack(
        children: [
          AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(0, 30 * (_controller.value - 0.5)),
                child: child,
              );
            },
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/bienvenida.png'), // Imagen de bienvenida
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.all(16.0),
              color: Colors.black.withOpacity(0.5), // Fondo semi-transparente para el texto
              child: Text(
                'Selecciona una opción del menú',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
