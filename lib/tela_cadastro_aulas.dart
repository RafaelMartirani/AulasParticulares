import 'package:flutter/material.dart';
import 'components/textfield.dart';
import 'components/buttom.dart';

class CadastroAula extends StatefulWidget {
  const CadastroAula({Key? key}) : super(key: key);

  @override
  _CadastroAulaState createState() => _CadastroAulaState();
}

class _CadastroAulaState extends State<CadastroAula> {
  @override
  Widget build(BuildContext context) {
    var formKey = GlobalKey<FormState>();
    return Scaffold(
      appBar: AppBar(title: Text('Publicar Aula'), centerTitle: true),
      backgroundColor: Theme.of(context).backgroundColor,
      body: Container(
          padding: EdgeInsets.all(30),
          child: Form(
              key: formKey,
              child: ListView(
                children: [
                  campoTexto('Matéria', 'Digite a matéria oferecida'),
                  campoTexto(
                      'Conteúdo', 'Digite o conteúdo da matéria oferecida'),
                  campoTexto('Data', 'Digite a data da aula oferecida'),
                  campoTexto('Horário', 'Digite a hora da aula oferecida'),
                  campoTexto(
                      'Valor', 'Digite o valor cobrado pela aula oferecida'),
                  Container(
                    width: 250,
                    child: Column(
                      children: [
                        botao('Publicar Aula', 'geraulap'),
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
                'Formas de Recebimento',
                style: TextStyle(color: Colors.blue),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, 'cadrecebe');
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
