import 'package:chat_bubbles/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:mhealth/theme.dart';
import 'package:mhealth/widget/header_chat.dart';
import 'package:mhealth/widget/input_chat.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final chatController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            const HeaderChat(),
            Column(
              children: const [
                SizedBox(
                  height: 10,
                ),
                BubbleSpecialOne(
                  text: 'Selamat Siang, Ada yang bisa saya bantu?',
                  color: Color(0xFFB7EFCD),
                  isSender: false,
                ),
                BubbleSpecialOne(
                  text: 'Gada mas',
                  color: Color(0xFFDBDBDB),
                  delivered: true,
                ),
              ],
            ),
            const Spacer(),
            const InputChat(),
          ],
        ),
      ),
    );
  }
}
