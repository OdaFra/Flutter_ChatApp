import 'package:chatapp/pages/chat_page.dart';
import 'package:chatapp/pages/loading_page.dart';
import 'package:chatapp/pages/register_page.dart';
import 'package:chatapp/pages/usuario_page.dart';
import 'package:flutter/material.dart';
import '../pages/login_page.dart';

final Map<String, Widget Function(BuildContext)> appRoutes = {
  'usuarios': (_) => const UsuariosPage(),
  'chat': (_) => ChatPage(),
  'login': (_) => const LoginPage(),
  'register': (_) => const RegisterPage(),
  'loading': (_) => const LoadingPage(),
};
