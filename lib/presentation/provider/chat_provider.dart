import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class ChatProvider extends ChangeNotifier {
  
  final ScrollController chatscrollController = ScrollController();
  List<Message> messageList = [
      Message(text: "llegue a casa", fromwho: FromWho.me),
      Message(text: "Como te fue?", fromwho: FromWho.me)
  ];

  Future<void> eventoChat(String text) async{
final newMessage  = Message(text: text, fromwho: FromWho.me);
messageList.add(newMessage);
notifyListeners();
  }

}