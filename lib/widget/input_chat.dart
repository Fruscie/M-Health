import 'package:flutter/material.dart';

import '../theme.dart';

class InputChat extends StatelessWidget {
  const InputChat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          padding: const EdgeInsets.only(left: 10, bottom: 10, top: 10),
          height: 60,
          width: double.infinity,
          decoration: BoxDecoration(
              color: chatInputColor, borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
              const Expanded(
                child: TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.white),
                    hintText: "Write message...",
                  ),
                ),
              ),
              FloatingActionButton(
                onPressed: () {},
                child: const Icon(
                  Icons.send,
                  color: Colors.white,
                ),
                backgroundColor: primaryColor,
                elevation: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
