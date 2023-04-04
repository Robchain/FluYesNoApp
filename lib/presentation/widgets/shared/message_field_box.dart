import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {

   final outlineInputBorder = UnderlineInputBorder(
    borderSide: const  BorderSide(color: Colors.transparent),
    borderRadius: BorderRadius.circular(40)
   );
   
   final inputdecoration = InputDecoration(
        enabledBorder: outlineInputBorder,
        focusedBorder: outlineInputBorder,
        filled: true,
        suffixIcon: IconButton( icon: const Icon(Icons.send_outlined),
        onPressed: () {
          print("asd");
        }, 
       )
       );
    return TextFormField(
      decoration:  inputdecoration,
      onFieldSubmitted: (value) {
        print(' campo subido $value');
      }
      ,onChanged: (value) {
        print(value);
      },
    );  
  }
}