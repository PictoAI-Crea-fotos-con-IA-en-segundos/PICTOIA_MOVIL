import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'register_screen.dart';
import 'menu_screen.dart';
import 'inicio_screen.dart';
import 'profile_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Register Menu App',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: LoginScreen(),
      routes: {
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/menu': (context) => MenuScreen(token: '', user: {}), // Ajustar para aceptar el token y los datos del usuario
        '/inicio': (context) => InicioScreen(),
        '/profile': (context) => ProfileScreen(user: {}), // Ajustar para aceptar los datos del usuario
      },
    );
  }
}
