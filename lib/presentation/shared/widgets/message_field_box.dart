import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  void _onPressed() {
    print('Valor de la caja de textooo :)');
  }

  void _onValueChaged(String value) {
    print('Valor: $value');
  }

  void _onSubmittedValue(String value) {
    print('Submitted value: $value');
  }

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(80),
    );

    final inputDecoration = InputDecoration(
      filled: true,
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: _onPressed,
      ),
    );

    return TextFormField(
      decoration: inputDecoration,
      onFieldSubmitted: _onSubmittedValue,
      onChanged: _onValueChaged,
    );
  }
}
