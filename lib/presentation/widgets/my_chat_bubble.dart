import 'package:flutter/material.dart';

class MyChatBubble extends StatelessWidget {
  const MyChatBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return  Column(crossAxisAlignment: CrossAxisAlignment.end,children: [Container(decoration: BoxDecoration(color: colors.primary, borderRadius: BorderRadius.circular(20) ),child: const Padding(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: Text("Loren",style: TextStyle(color: Colors.white),),
    ),), const SizedBox(height: 10)]);
  }
}