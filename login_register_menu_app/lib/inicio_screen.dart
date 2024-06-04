import 'package:flutter/material.dart';

class InicioScreen extends StatelessWidget {
  const InicioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inicio'),
        backgroundColor: Colors.purple,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/somos.jpeg'),
                    SizedBox(height: 10),
                    Text(
                      'Quiénes Somos',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.purple),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Somos PictoAI, una startup innovadora dedicada a proporcionar herramientas avanzadas para la generación de imágenes mediante inteligencia artificial. Nuestra misión es hacer que la creación de imágenes sea accesible y fácil para todos.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/genima.png'),
                    SizedBox(height: 10),
                    Text(
                      'Función de Generar Imagen',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.purple),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Con nuestra función de generar imagen, puedes crear imágenes únicas y personalizadas simplemente proporcionando un prompt. Nuestra tecnología de IA procesará el prompt y generará una imagen que coincide con tu descripción.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Precios',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.purple),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/basico.webp'),
                    SizedBox(height: 10),
                    Text(
                      'Plan Básico',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '\S/.9.99/mes',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Acceso a funciones básicas de generación de imágenes.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/pro.webp'),
                    SizedBox(height: 10),
                    Text(
                      'Plan Pro',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '\S/.19.99/mes',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Acceso completo a todas las funciones y herramientas avanzadas.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/empresa.webp'),
                    SizedBox(height: 10),
                    Text(
                      'Plan Empresarial',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.purple),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '\S/.49.99/mes',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Soluciones personalizadas y soporte prioritario para empresas.',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
