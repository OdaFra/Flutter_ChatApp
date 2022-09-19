import 'package:chatapp/global/environment.dart';
import 'package:flutter/material.dart';

import 'package:socket_io_client/socket_io_client.dart' as IO;

enum ServerStatus {
  onLine,
  offLine,
  connecting,
}

class SocketService with ChangeNotifier {
  ServerStatus _serverStatus = ServerStatus.connecting;
  IO.Socket _socket;

  ServerStatus get serverStatus => _serverStatus;

  IO.Socket get socket => _socket;
  Function get emit => _socket.emit;

  // SocketService() {
  //   _initConfig();
  // }

  void connect() {
    // Dart client
    _socket = IO.io(Environment.socketUrl, {
      'transports': ['websocket'],
      'autoConnect': true,
      'forceNew': true
    });

    _socket.on('connect', (_) {
      _serverStatus = ServerStatus.onLine;
      notifyListeners();
    });

    _socket.on('disconnect', (_) {
      _serverStatus = ServerStatus.offLine;
      notifyListeners();
    });
  }

  void disconnect() {
    _socket.disconnect();
  }
}
