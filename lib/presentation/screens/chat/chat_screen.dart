import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/presentation/provider/chat_provider.dart';
import 'package:yes_no_app/presentation/widgets/her_chat_bubble.dart';
import 'package:yes_no_app/presentation/widgets/my_chat_bubble.dart';
import 'package:yes_no_app/presentation/widgets/shared/message_field_box.dart';

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
    final chatProvider = context.watch<ChatProvider>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                    child: ListView.builder(
                      controller: chatProvider.chatscrollController,
              itemCount: chatProvider.messageList.length,
              itemBuilder: (context, index) {
                final message = chatProvider.messageList[index];
                
                return (message.fromwho == FromWho.hers)?
                 const HerChatBubble()
                : MyChatBubble(message: message);
              },
            )),
             MessageFieldBox(

              //onValue: (value) => chatProvider.eventoChat(value),
              onValue: chatProvider.eventoChat,
            )
          ],
        ),
      ),
    );
  }
}
