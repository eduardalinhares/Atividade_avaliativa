import 'package:atividade_avaliativa/telas/tela_acoes.dart';
import 'package:atividade_avaliativa/telas/tela_criptomoeda.dart';
import 'package:atividade_avaliativa/telas/tela_moeda.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Financas de Hoje'), centerTitle: true, ),
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/tela1',
        routes: {
          '/tela1' : (context) => const Tela_moedas(),
          '/tela2' : (context) => const Tela_acoes(),
          '/tela3' : (context) => const Tela_criptoMoedas(),
        } ,
        
      ),
    );

  }
}
