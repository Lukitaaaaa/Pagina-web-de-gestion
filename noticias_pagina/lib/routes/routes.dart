import 'package:flutter/material.dart';

import 'package:noticias_pagina/pages/home_page.dart';
import 'package:noticias_pagina/pages/noticias_page.dart';


final Map<String, Widget Function(BuildContext)> appRoutes = {

  'home': (_) => const HomePage(),
  'noticias': (_) => const NoticiasPage(),
  
};