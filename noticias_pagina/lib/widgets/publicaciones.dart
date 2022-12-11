import 'package:flutter/material.dart';

class Publicaciones extends StatelessWidget {

  final String titulo;
  final String de;
  final String descripcion;

  const Publicaciones({
    super.key,
    required this.titulo,
    required this.de,
    required this.descripcion,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 8.0, bottom: 8.0, left: 200,right: 200),
      
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 206, 224, 237),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row( // TITULO DE LA PUBLICACION
              children: [
                Text(titulo, 
                style: const TextStyle(
                  fontSize: 20, 
                  fontWeight: FontWeight.bold
                ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row( // DETALLES DE LA PUBLICAION: 
              children: [
                Text(de, // 
                style: TextStyle(
                  color: Colors.grey[800],
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
                ),
                  const SizedBox(
                  width: 5,
                ),
                
              ],
            ),
            const Divider(
              height: 10,
              thickness: 0.5,
              color: Colors.black,
            ),

            Text(descripcion), // TEXTO DE LA PUBLICACION
                           
          ],
        ),
      ),
     );
  }
}