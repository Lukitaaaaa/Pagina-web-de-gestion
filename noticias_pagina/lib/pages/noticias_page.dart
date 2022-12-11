import 'package:flutter/material.dart';

import 'package:noticias_pagina/widgets/publicaciones.dart';

class NoticiasPage extends StatefulWidget {
  const NoticiasPage({super.key});

  @override
  State<NoticiasPage> createState() => _NoticiasPageState();
}

class _NoticiasPageState extends State<NoticiasPage> {

  final textControllerTitulo = TextEditingController();
  final textControllerDescripcion = TextEditingController();
  final textControllerDe = TextEditingController();

  List<Publicaciones> _publicaciones = [
    Publicaciones(titulo: 'titulo', de: 'de', descripcion: 'descripcion')
  ];

  bool camposLLenos = false;

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina Web de gestion'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _publicaciones.length,
                itemBuilder: (_, i) => _publicaciones[i], 
              ) 
            
            ),
            FloatingActionButton(
              elevation: 1,
              onPressed: newNoticia,
              child: const Icon(Icons.add),
              



            )
            
          ],
        ),
      ),
    );
  }

  newNoticia(){
    
    


    showDialog(
      context: context, 
      builder: (_) => AlertDialog(
        title: Text('Nueva noticia'),
        actions: [
          TextField(
            controller: textControllerTitulo,
            onSubmitted: _handleTitleSubmit,
            onChanged: (String texto) {
              setState(() {
                if (texto.trim().isNotEmpty) {
                  camposLLenos = true;
                } else {
                  camposLLenos = false;
                }
              });
            },
            decoration: const InputDecoration(
              labelText: 'Titulo'
            ),
          ),

          TextField(
            controller: textControllerDe,
            onSubmitted: _handleDeSubmit,
            onChanged: (String texto) {
              setState(() {
                if (texto.trim().isNotEmpty) {
                  camposLLenos = true;
                } else {
                  camposLLenos = false;
                }
              });
            },
            decoration: const InputDecoration(
              labelText: 'De'
            ),
          ),
          TextField(
            controller: textControllerDescripcion,
            onSubmitted: _handleDescriptionSubmit,
            onChanged: (String texto) {
              setState(() {
                if (texto.trim().isNotEmpty) {
                  camposLLenos = true;
                } else {
                  camposLLenos = false;
                }
              });
            },
            decoration: const InputDecoration(
              labelText: 'Descripcion'
            ),
          ),
          MaterialButton(
            elevation: 5,
            textColor: Colors.blue,
            onPressed: camposLLenos
              ? () {
                _handleTitleSubmit( textControllerTitulo.text.trim() );
                _handleDeSubmit( textControllerDe.text.trim() );
                _handleDescriptionSubmit( textControllerDescripcion.text.trim() );
              }
              : null,
            
              
            child: Text('Add'),
          )
        ],
      )
    
    );

  }

  _handleTitleSubmit( String titulo){
    
    if (titulo.isEmpty) return;

    textControllerTitulo.clear();
    setState(() {
      camposLLenos = false;
    });
  }
  _handleDeSubmit( String de){

    if (de.isEmpty) return;

    textControllerDe.clear();
    setState(() {
      camposLLenos = false;
    });

  }
  _handleDescriptionSubmit( String descripcion){

    if (descripcion.isEmpty) return;

    textControllerDescripcion.clear();
    setState(() {
      camposLLenos = false;
    });

  }

  @override
  void dispose() {
    // TODO: implement dispose

    
    super.dispose();
  }
                                                                   
}