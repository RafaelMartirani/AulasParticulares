import 'package:flutter/material.dart';
import 'components/buttom.dart';

class telaConta extends StatefulWidget {
  const telaConta({Key? key}) : super(key: key);

  @override
  _telaContaState createState() => _telaContaState();
}

class _telaContaState extends State<telaConta> {
  var banco = [];
  var cartao = [];
  var apelido = [];

  @override
  void initState() {
    banco.add('Banco do Brasil');
    cartao.add('Cartão Final: 4514');
    apelido.add('Apelido do Cartão');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Gerenciar Contas'), centerTitle: true),
      body: Container(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: ListView.builder(
                  itemCount: cartao.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation: 10,
                      child: ListTile(
                          title: Text('Banco do Brasil',
                              style: Theme.of(context).textTheme.headline5),
                          subtitle: Text('Agencia e Conta',
                              style: Theme.of(context).textTheme.headline6),
                          trailing: IconButton(
                            color: Colors.blue[500],
                            icon: Icon(Icons.delete),
                            onPressed: () {
                              setState(() {
                                cartao.removeAt(index);
                              });
                            },
                          )),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
