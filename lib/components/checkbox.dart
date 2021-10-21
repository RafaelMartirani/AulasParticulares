import 'package:aulas_particulares/components/buttom.dart';
import 'package:aulas_particulares/components/textfield.dart';
import 'package:flutter/material.dart';

class checkbox extends StatefulWidget {
  const checkbox({Key? key}) : super(key: key);

  @override
  _checkboxState createState() => _checkboxState();
}

class _checkboxState extends State<checkbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue.shade500;
      }
      return Colors.blue.shade500;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                    content: Container(
                        height: 150,
                        child: Column(children: [
                          campoTexto('Formação', 'Digite sua formação'),
                          botao('Salvar', 'cadastro')
                        ])));
              });
        });
      },
    );
  }
}
