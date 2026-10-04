import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  MessageFieldBox({super.key});

  final textController = TextEditingController();
  final focusNode = FocusNode();

  void _onPressed() {
    final textValue = textController.value.text;
    print('Valor de la caja de textooo :) $textValue');
    textController.clear();
  }

  void _onValueChaged(String value) {
    //? Solo es una demostracion
    print('Valor: $value');
  }

  void _onSubmittedValue(String value) {
    print('Submitted value: $value');
    textController.clear();
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = UnderlineInputBorder(
      borderSide: const BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(80),
    );

    final inputDecoration = InputDecoration(
      hintText: 'Envia tu mensaje con "?" al final',
      filled: true,
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: _onPressed,
      ),
    );

    return TextFormField(
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: _onSubmittedValue,
      onChanged: _onValueChaged,
    );
  }
}
