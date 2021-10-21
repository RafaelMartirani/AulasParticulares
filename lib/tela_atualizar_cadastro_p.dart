import 'package:flutter/material.dart';
import 'components/textfield.dart';
import 'components/buttom.dart';

class AtualCadP extends StatefulWidget {
  const AtualCadP({Key? key}) : super(key: key);

  @override
  _AtualCadPState createState() => _AtualCadPState();
}

class _AtualCadPState extends State<AtualCadP> {
  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    bool isChecked = false;

    return Scaffold(
        appBar: AppBar(
          title: Text('Atualizar Cadastro'),
          centerTitle: true,
        ),
        body: Container(
            padding: EdgeInsets.all(50),
            child: ListView(
              children: [
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      campoTexto('CEP', 'Digite CEP'),
                      campoTexto('Logradouro', 'Digite seu endereço'),
                      campoTexto('Número', 'Digite o número da casa'),
                      campoTexto('Complemento', 'Ap, Bloco, Referencia'),
                      campoTexto('Cidade', "Digite sua cidade"),
                      campoTexto('UF', 'Digite seu estado'),
                      campoTexto('Formação', 'Digite sua Formação'),
                      botao('Atualizar', 'prof'),
                    ],
                  ),
                )
              ],
            )),
        backgroundColor: Theme.of(context).backgroundColor);
  }
}
