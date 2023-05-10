import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Caixa_texto extends StatefulWidget {
  final controlador;
  final msgValidacao;
  final texto;
  final senha;

  const Caixa_texto(
      {super.key, this.controlador, this.msgValidacao, this.texto, this.senha});

  @override
  State<Caixa_texto> createState() => _Caixa_textoState();
}

class _Caixa_textoState extends State<Caixa_texto> {
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: TextFormField(
          controller: widget.controlador,
          validator: (valeu) {
            if (valeu!.isEmpty) {
              return widget.msgValidacao;
            }
          },
          obscureText: widget.senha,
          decoration: InputDecoration(
              labelText: widget.texto,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(15))),
        ));
  }
}
