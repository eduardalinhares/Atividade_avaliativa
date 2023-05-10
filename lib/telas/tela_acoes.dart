import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:atividade_avaliativa/componentes/botao.dart';
import 'package:atividade_avaliativa/componentes/caixa_texto.dart';

import 'package:http/http.dart';

class Tela_acoes extends StatefulWidget {
  const Tela_acoes({super.key});

  @override
  State<Tela_acoes> createState() => _Tela_acoesState();
}



class _Tela_acoesState extends State<Tela_acoes> {
  String dolar_string = '';
  String dolar_variacao_string = '';

  String euro_string = '';
  String euro_variacao_string = '';

  String yen_string = '';
  String yen_variacao_string = '';

  String peso_string = '';
  String peso_variacao_string = '';

  buscarInfoMoedas() async {
    final String urlViaMoedas =
        await 'https://api.hgbrasil.com/finance?format=json-cors&key=bc3665d2';
    Response resposta_moeda = await get(Uri.parse(urlViaMoedas));
    Map money = json.decode(resposta_moeda.body);

    dynamic dolar = money['results']['currencies']['USD']['buy'];
    dynamic dolar_variacao =
        money['re sults']['currencies']['USD']['variation'];

    dynamic euro = money['results']['currencies']['EUR']['buy'];
    dynamic euro_variacao = money['results']['currencies']['EUR']['variation'];

    dynamic yen = money['results']['currencies']['JPY']['buy'];
    dynamic yen_variacao = money['results']['currencies']['JPY']['variation'];

    dynamic peso = money['results']['currencies']['ARS']['buy'];
    dynamic peso_variacao = money['results']['currencies']['ARS']['variation'];

    //dynamic d = calcularDolar(double.parse(txtReal.text), valor_dolar);
    //dynamic e = calcularEuro(double.parse(txtReal.text), valor_euro);

    setState(() {
      dolar_string = dolar;
      dolar_variacao_string = dolar_variacao;

      euro_string = euro;
      euro_variacao_string = euro_variacao;

      yen_string = yen;
      yen_variacao_string = yen_variacao;

      peso_string = peso;
      peso_variacao_string = peso_variacao;
    });
  }







  String IBOVESPA_string = '';
  String IBOVESPA_variacao_string = '';

  String NASDAQ_string = '';
  String NASDAQ_variacao_string = '';

  String CAC_string = '';
  String CAC_variacao_string = '';

  String IFIX_string = '';
  String IFIX_variacao_string = '';

  String DOWJONES_stirng = '';
  String DOWJONES_variacao_stirng = '';

  String NIKKEI_sting = '';
  String NIKKEI_variacao_sting = '';

  buscarInfoAcoes() async {
    final String urlViaAcoes =
        await 'https://api.hgbrasil.com/finance?format=json-cors&key=bc3665d2';
    Response respostaAcoes = await get(Uri.parse(urlViaAcoes));
    Map money = json.decode(respostaAcoes.body);

    dynamic IBOVESPA = money['results']['stocks']['IBOVESPA']['points'];
    dynamic IBOVESPA_variacao =
        money['results']['stocks']['IBOVESPA']['variation'];

    dynamic NASDAQ = money['results']['stocks']['NASDAQ']['points'];
    dynamic NASDAQ_variacao = money['results']['stocks']['NASDAQ']['variation'];

    dynamic CAC = money['results']['stocks']['CAC']['points'];
    dynamic CAC_variacao = money['results']['stocks']['CAC']['variation'];

    dynamic IFIX = money['results']['stocks']['IFIX']['points'];
    dynamic IFIX_variacao = money['results']['stocks']['IFIX']['variation'];

    dynamic DOWJONES = money['results']['stocks']['DOWJONES']['points'];
    dynamic DOWJONES_variacao =
        money['results']['stocks']['DOWJONES']['variation'];

    dynamic NIKKEI = money['results']['stocks']['NIKKEI']['points'];
    dynamic NIKKEI_variacao = money['results']['stocks']['NIKKEI']['variation'];

    setState(() {
       IBOVESPA_string = IBOVESPA;
       IBOVESPA_variacao_string = IBOVESPA_variacao;

       NASDAQ_string = NASDAQ;
       NASDAQ_variacao_string = NASDAQ_variacao;

       CAC_string = CAC;
       CAC_variacao_string = CAC_variacao;

       IFIX_string = IFIX;
       IFIX_variacao_string = IFIX_variacao;

       DOWJONES_stirng = DOWJONES;
       DOWJONES_variacao_stirng = DOWJONES_variacao;

       NIKKEI_sting = NIKKEI;
       NIKKEI_variacao_sting = NIKKEI_variacao;
    });
  }

 CupertinoButton(){

 }

  @override
  Widget build(BuildContext context) {
    return  Form(
      child: Column(
        children: [

          Padding(padding: EdgeInsets.all(50), child: Text('Moedas'),),

          Row(
            children: [


              Column(children: [
                Text('Dolar'),
                Row(
                  children: [
                    Text(dolar_string,),
                    Text(dolar_variacao_string)
                  ],
                ),
                Text(''),
                Text('Peso'),
                Row(
                  children: [
                    Text(peso_string),
                    Text(peso_variacao_string)
                  ],
                )
                ],
                ),


              Column(children: [
                Text('Euro'),
                Row(
                  children: [
                    Text(euro_string),
                    Text(euro_variacao_string)
                  ],
                ),
                Text(''),
                Text('Yen'),
                Row(
                  children: [
                    Text(yen_string),
                    Text(yen_variacao_string)
                  ],
                )


              ],)
            ],
          )
        ],
      ) ,
    ); 
    

  }
}
