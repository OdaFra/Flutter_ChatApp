import 'package:chatapp/pages/chat_page.dart';
import 'package:chatapp/pages/register_page.dart';
import 'package:chatapp/pages/usuario_page.dart';
import 'package:flutter/material.dart';
import '../pages/login_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'usuarios': (_) => UsuariosPage(),
  'chat': (_) => ChatPage(),
  'login': (_) => LoginPage(),
  'register': (_) => RegisterPage(),
  'loading': (_) => LoginPage(),
};
