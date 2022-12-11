
import 'package:flutter/material.dart';
import 'package:noticias_pagina/models/publicacion_canal.dart';

import 'package:noticias_pagina/widgets/publicaciones_gen.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final canal = [
    CanalPublicacion(nombre: '1°3 Primero Tercera', uid: '123'),
    CanalPublicacion(nombre: '1°7 Primero Septima', uid: '1234'),
 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: const Text('Pagina web de gestion'),
        centerTitle: true
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          
          children: [
            PublicacionesGenerales(
              titulo: 'Publicaciones generales', 
              color: Colors.indigo,
              onPressed: ()=> Navigator.pushReplacementNamed(context, 'noticias'), 
            ),

            SizedBox(height: 20),

            Expanded(
              child: ListView.separated(
                itemBuilder: (_,i) => ListTile(
                  title: Text(canal[i].nombre),
                  leading: CircleAvatar(
                    backgroundColor: Colors.indigo,
                    child: Text(canal[i].nombre.substring(0,3)),
                  ),
                ), 
                separatorBuilder: (_,i) => Divider(), 
                itemCount: canal.length
              ),
            )
            
          ],
        ),
      ),
    );
  }
}
