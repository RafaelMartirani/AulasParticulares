import 'package:flutter/material.dart';
import 'components/textfield.dart';
import 'components/buttom.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();

    return Scaffold(
        appBar: AppBar(
          title: Text('Aulas Particulares',
              style: Theme.of(context).textTheme.headline4),
          automaticallyImplyLeading: false,
          backgroundColor: Theme.of(context).primaryColor,
          centerTitle: true,
        ),
        body: Container(
            padding: EdgeInsets.all(30),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Container(
                    width: 500,
                    height: 400,
                    margin: EdgeInsets.only(bottom: 20),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.blueAccent.shade200),
                      image: DecorationImage(
                          image: AssetImage('lib/imagens/login.png')),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 20,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                  ),
                  campoTexto('E-mail', 'Entre com seu e-mail'),
                  campoTexto('Senha', 'Digite sua senha'),
                  botao('Entrar', 'aluno'),
                  botao('Cadastro', 'cadastro')
                ],
              ),
            )),
        backgroundColor: Theme.of(context).backgroundColor);
  }
}
