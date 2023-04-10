import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  final ValueChanged<String> onValue;
  const MessageFieldBox({required this.onValue, super.key});

  @override
  Widget build(BuildContext context) {
    final focusnode = FocusNode();
    final textcontroller = TextEditingController();
    final outlineInputBorder = UnderlineInputBorder(
        borderSide: const BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.circular(40));

    final inputdecoration = InputDecoration(
        hintText: "TERMINAR EL MENSAJE CON UN '?' ",
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton(
          icon: const Icon(Icons.send_outlined),
          onPressed: () {
            final data = textcontroller.value.text;
            onValue(data);
            textcontroller.clear();
          },
        ));
    return TextFormField(
        onTapOutside: (event) {
          focusnode.unfocus();
        },
        focusNode: focusnode,
        controller: textcontroller,
        decoration: inputdecoration,
        onFieldSubmitted: (value) {
          textcontroller.clear();
          focusnode.requestFocus();
          onValue(value);
        });
  }
}
