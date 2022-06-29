import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/info.dart';
import 'package:whatsapp_clone/widgets/receiverCard.dart';
import 'package:whatsapp_clone/widgets/senderCard.dart';

class ChatsList extends StatelessWidget {
  const ChatsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          if (messages[index]['isMe'] == true) {
            return ReceiverCard(
                message: messages[index]['text'].toString(),
                date: messages[index]['time'].toString());
          }
          return SenderCard(
              message: messages[index]['text'].toString(),
              date: messages[index]['time'].toString());
        });
  }
}
