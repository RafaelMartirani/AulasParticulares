import 'package:flutter/material.dart';
import 'components/textfield.dart';
import 'components/buttom.dart';

class CadRecebe extends StatefulWidget {
  const CadRecebe({Key? key}) : super(key: key);

  @override
  _CadRecebeState createState() => _CadRecebeState();
}

class _CadRecebeState extends State<CadRecebe> {
  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    {
      return Scaffold(
        appBar:
            AppBar(title: Text('Cadastrar Conta Bancária'), centerTitle: true),
        backgroundColor: Theme.of(context).backgroundColor,
        body: Container(
            padding: EdgeInsets.all(30),
            child: Form(
                key: formKey,
                child: ListView(
                  children: [
                    campoTexto('Agencia', 'Entre com seu e-mail'),
                    campoTexto('Conta', 'Digite sua senha'),
                    campoTexto('Nome do titular', 'Digite sua senha'),
                    campoTexto('CPF do titular', 'Digite sua senha'),
                    campoTexto('CEP', 'Digite CEP'),
                    campoTexto('Logradouro', 'Digite seu endereço'),
                    campoTexto('Número', 'Digite o número da casa'),
                    campoTexto('Complemento', 'Ap, Bloco, Referencia'),
                    campoTexto('Cidade', "Digite sua cidade"),
                    campoTexto('UF', 'Digite seu estado'),
                    Container(
                      width: 250,
                      child: Column(
                        children: [
                          botao('Cadastrar Conta', 'gercont'),
                          botao('Gerenciar Contas', 'gercont')
                        ],
                      ),
                    )
                  ],
                ))),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Nome do Professor',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                title: const Text(
                  'Meu Perfil',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, 'prof');
                },
              ),
              ListTile(
                title: const Text(
                  'Publicar Aula',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, 'cadaula');
                },
              ),
              ListTile(
                title: const Text(
                  'Gerenciar Aulas',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, 'geraulap');
                },
              ),
              ListTile(
                title: const Text(
                  'Sobre',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, 'sobre');
                },
              ),
              ListTile(
                title: const Text(
                  'Sair',
                  style: TextStyle(color: Colors.blue),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, 'login');
                },
              ),
            ],
          ),
        ),
      );
    }
  }
}
