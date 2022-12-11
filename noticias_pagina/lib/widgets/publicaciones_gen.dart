import 'package:flutter/material.dart';

class PublicacionesGenerales extends StatelessWidget {

  final String titulo;
  final Color color;
  final Function() onPressed;

  const PublicacionesGenerales({
    super.key,
    required this.titulo,
    required this.color,
    required this.onPressed,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 4.0, bottom: 4.0, left: 100,right: 100),
      padding: const EdgeInsets.only(top: 20.0, bottom: 20, ),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(titulo, style: TextStyle( color: Colors.white )),
      ),
    );
  }
}
