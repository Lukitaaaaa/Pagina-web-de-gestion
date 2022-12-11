// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';


import 'package:socket_io_client/socket_io_client.dart' as IO;

enum ServerStatus{ // Enumeracion de los estados el server
  Online,
  Offline,
  Connecting
}

class SocketService with ChangeNotifier {

  ServerStatus _serverStatus = ServerStatus.Connecting; // El guion bajo hace que la propiedad sea privada, para controlar la manera de como va a cambiar
  late IO.Socket _socket; 

  ServerStatus get serverStatus => _serverStatus;
  IO.Socket get socket => _socket;

  SocketService(){ //Cuando se cree una nueva instancia del "SocketService" va a llavar al "_initConfig  "
    _initConfig();
  }

  void _initConfig(){
    //Dart client
    _socket = IO.io('http://192.168.0.100:3000',{ //!Poner la ip de la computadora donde se este ejecutando el programa o poner localhost en caso de debugear en ios
      'transports': ['websocket'],
      'autoConnect': true,
    });


    _socket.on('connect',(_) {
      _serverStatus = ServerStatus.Online;
      notifyListeners();
    }); 

    _socket.on('disconnect',(_) {
      _serverStatus = ServerStatus.Offline;
      notifyListeners();
    });

    // socket.on('nuevo-mensaje',( payload ) {
    //   print('nuevo-mensaje: $payload');
    // });

    //Esto hace que escuche un mensaje desde mi backend
  }

}