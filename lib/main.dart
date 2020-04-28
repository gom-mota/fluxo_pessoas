import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int contador = 0;
  String lotacao = "Pode entrar!";

  String _verificaContador() {
    setState(() {
      if (contador >= 5) {
        lotacao = "Está cheio!";
      } else {
        lotacao = "Pode entrar!";
      }
    });
    return lotacao;
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.asset(
          "assets/images/supermercado.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas: $contador",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(10.2),
                  child: FlatButton(
                    child: Text(
                      "-1",
                      style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ),
                    onPressed: () {
                      setState(() {
                        if (contador > 0) {
                          contador--;
                        }
                      });
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.2),
                  child: FlatButton(
                    child: Text(
                      "+1",
                      style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ),
                    onPressed: () {
                      setState(() {
                        if (contador >= 0) {
                          contador++;
                        }
                      });
                    },
                  ),
                ),
              ],
            ),
            Text(
              _verificaContador(),
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0),
            )
          ],
        )
      ], //Column
    );
  }

  //runApp: comando para executar o App
  //MaterialApp: widgets da tela do tipo MaterialApp
  //Container: outro widgets de colocar novos componentes

}
