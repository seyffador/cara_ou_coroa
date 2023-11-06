import 'dart:math';

import 'package:cara_ou_coroua/home_page.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatefulWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  var _imageApp = AssetImage("images/moeda_cara.png");
  void _opcaoSelecionada(String escolhaUsuario){

  }
  @override
  Widget build(BuildContext context) {
    var opcoes= [ "cara", "coroa"];
    var numero = Random().nextInt(2);
    var escolhaApp= opcoes[numero];
    print("Resultado: " + escolhaApp);
    switch(escolhaApp){
      case"cara":
        setState(() {
          this._imageApp=AssetImage("images/moeda_cara.png");
        });
        break;
      case"coroa":
        setState(() {
          this._imageApp=AssetImage("images/moeda_coroa.png");
        });
        break;
    }
    return Scaffold(
      backgroundColor: Color(0xff61bd8c),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(1),
            child:  Image(image: this._imageApp),
          ),
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                )),
            child: Image.asset(
              "images/botao_voltar.png",
              height: 100,
            ),
          )
        ],
      ),
    );
  }
}
