import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:noticias_pagina/routes/routes.dart';

import 'package:noticias_pagina/services/socket_service.dart';

//import 'package:noticias_pagina/pages/noticias_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SocketService() )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        
        initialRoute: 'home',
        routes: appRoutes
      ),
    );
  }
}