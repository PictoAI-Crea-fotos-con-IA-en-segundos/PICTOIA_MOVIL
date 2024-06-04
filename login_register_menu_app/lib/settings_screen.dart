import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _darkMode = false;
  bool _notifications = true;
  String _language = 'Español';
  double _fontSize = 16.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuración'),
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          SwitchListTile(
            title: Text('Modo Oscuro'),
            value: _darkMode,
            onChanged: (value) {
              setState(() {
                _darkMode = value;
              });
            },
            secondary: Icon(Icons.brightness_4),
          ),
          Divider(),
          SwitchListTile(
            title: Text('Notificaciones'),
            value: _notifications,
            onChanged: (value) {
              setState(() {
                _notifications = value;
              });
            },
            secondary: Icon(Icons.notifications),
          ),
          Divider(),
          ListTile(
            title: Text('Idioma'),
            subtitle: Text(_language),
            leading: Icon(Icons.language),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text('Seleccionar Idioma'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          title: Text('Español'),
                          onTap: () {
                            setState(() {
                              _language = 'Español';
                              Navigator.pop(context);
                            });
                          },
                        ),
                        ListTile(
                          title: Text('English'),
                          onTap: () {
                            setState(() {
                              _language = 'English';
                              Navigator.pop(context);
                            });
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          ),
          Divider(),
          ListTile(
            title: Text('Tamaño de Fuente'),
            subtitle: Text('${_fontSize.toInt()} px'),
            leading: Icon(Icons.text_fields),
          ),
          Slider(
            value: _fontSize,
            min: 12.0,
            max: 24.0,
            divisions: 6,
            onChanged: (value) {
              setState(() {
                _fontSize = value;
              });
            },
          ),
          Divider(),
          ListTile(
            title: Text('Privacidad y Seguridad'),
            leading: Icon(Icons.security),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navegar a la pantalla de Privacidad y Seguridad
            },
          ),
          Divider(),
          ListTile(
            title: Text('Almacenamiento y Datos'),
            leading: Icon(Icons.storage),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navegar a la pantalla de Almacenamiento y Datos
            },
          ),
          Divider(),
          ListTile(
            title: Text('Acerca de PictoAI'),
            leading: Icon(Icons.info),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navegar a la pantalla de Acerca de
            },
          ),
          Divider(),
          ElevatedButton(
            child: Text('Guardar Cambios'),
            style: ElevatedButton.styleFrom(
              primary: Colors.greenAccent,
              padding: EdgeInsets.symmetric(vertical: 15),
            ),
            onPressed: () {
              // Guardar cambios y mostrar SnackBar
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Configuración guardada')),
              );
            },
          ),
        ],
      ),
    );
  }
}