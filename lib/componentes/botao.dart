import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Botao extends StatefulWidget {
  final funcao;
  final texto;

  const Botao({super.key, this.funcao, this.texto});

  @override
  State<Botao> createState() => _BotaoState();
}

class _BotaoState extends State<Botao> {
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(10),
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(foregroundColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 150, 65, 199), 
      elevation: 15,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),

      ),
      minimumSize: const Size(200, 40),
      ), 
      onPressed: widget.funcao,
      child: Text(widget.texto),
    ),
    );
  }
}
