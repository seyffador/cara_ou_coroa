import 'package:cara_ou_coroua/result_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd8c)
      ,
      appBar: AppBar(
        title: Text("tela primaria testada"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          Image.asset("images/logo.png"),
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ResultPage(),
                )),
            child: Image.asset(
              "images/botao_jogar.png",
              height: 100,
            ),
          ),
        ],
      ),
    );
  }
}
