import 'package:chatapp/widgets/Btn_azul.dart';
import 'package:chatapp/widgets/Custom_input.dart';
import 'package:flutter/material.dart';

import '../widgets/Label.dart';
import '../widgets/Logo.dart';

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF2F2F2),
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Logo(titulo: 'Registro'),
                  _Form(),
                  const Labels(
                    ruta: 'login',
                    titulo: '¿Ya tienes cuenta?',
                    subtitulo: 'Ingresa ahora!',
                  ),
                  const Text(
                    'Terminos y condiciones de uso',
                    style: TextStyle(fontWeight: FontWeight.w200),
                  ),
                  const SizedBox(height: 0),
                ],
              ),
            ),
          ),
        ));
  }
}

class _Form extends StatefulWidget {
  @override
  State<_Form> createState() => __FormState();
}

class __FormState extends State<_Form> {
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final nameCtrl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          CustomInputWidget(
            icon: Icons.perm_identity,
            placeholder: 'Nombre',
            keyboardType: TextInputType.text,
            textController: nameCtrl,
          ),
          CustomInputWidget(
            icon: Icons.mail_outline,
            placeholder: 'Correo',
            keyboardType: TextInputType.emailAddress,
            textController: emailCtrl,
          ),
          CustomInputWidget(
            icon: Icons.lock_clock_outlined,
            placeholder: 'Contraseña',
            isPassword: true,
            // keyboardType: TextInputType.emailAddress,
            textController: passCtrl,
          ),
          BotonAzul(
              texto: 'Ingresar',
              onpressed: () {
                print('Hola Mundo');
              })
        ],
      ),
    );
  }
}
