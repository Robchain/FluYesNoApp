import 'package:flutter/material.dart';

class ChatSreen extends StatelessWidget {
  const ChatSreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(backgroundColor: Color(0xFF49149F)),
        ),
        title: const Text("Mi amor <3"),
        centerTitle: false,
      ),
      body: const ChatView(),
    );
  }
}

class ChatView extends StatelessWidget {
  const ChatView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(child: Container(color: Colors.amber)),
            FilledButton(
              onPressed: () {},
              child: const Text("enviar"),
            )
          ],
        ),
      ),
    );
  }
}
