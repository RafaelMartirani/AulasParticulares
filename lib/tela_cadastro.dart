import 'package:flutter/material.dart';
import 'components/textfield.dart';
import 'components/buttom.dart';
import 'components/checkbox.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({Key? key}) : super(key: key);

  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    bool isChecked = false;

    return Scaffold(
        appBar: AppBar(
          title: Text('Cadastro'),
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
        ),
        body: Container(
            padding: EdgeInsets.all(30),
            child: ListView(
              children: [
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      campoTexto('Nome Completo', 'Digite seu nome'),
                      campoTexto('CPF', 'Digite seu CPF'),
                      campoTexto('E-mail', 'Digite seu e-mail'),
                      campoTexto('CEP', 'Digite CEP'),
                      campoTexto('Logradouro', 'Digite seu endereço'),
                      campoTexto('Número', 'Digite o número da casa'),
                      campoTexto('Complemento', 'Ap, Bloco, Referencia'),
                      campoTexto('Cidade', "Digite sua cidade"),
                      campoTexto('UF', 'Digite seu estado'),
                      //campoTexto('Formação', 'Digite sua formação'),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        width: 150,
                        child: TextButton(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.photo,
                                  color: Colors.blue[500],
                                ),
                              ),
                              Text(
                                'Anexar Foto',
                                style: TextStyle(color: Colors.blue[500]),
                              )
                            ],
                          ),
                          onPressed: () {},
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          checkbox(),
                          Text(
                            'Sou Professor',
                            style: TextStyle(color: Colors.blue[500]),
                          )
                        ],
                      ),
                      botao('Finalizar Cadastro', 'prof'),
                    ],
                  ),
                )
              ],
            )),
        backgroundColor: Theme.of(context).backgroundColor);
  }
}
