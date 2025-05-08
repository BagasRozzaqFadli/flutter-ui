// lib/screens/chat_detail_screen.dart
import 'package:flutter/material.dart';

class ChatDetailScreen extends StatelessWidget {
  final String name;
  final String imageUrl;

  const ChatDetailScreen({
    super.key,
    required this.name,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(backgroundImage: NetworkImage(imageUrl)),
            const SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontSize: 16)),
                const Text('was 20 minutes ago', style: TextStyle(fontSize: 12)),
              ],
            ),
          ],
        ),
        actions: const [
          Icon(Icons.call),
          SizedBox(width: 16),
          Icon(Icons.more_vert),
          SizedBox(width: 8),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              children: const [
                Align(
                  alignment: Alignment.centerLeft,
                  child: ChatBubble(
                    text: 'Gastroenteritis means inflammation of stomach...',
                    time: '12:30',
                    isSentByMe: false,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: ChatBubble(
                    text: 'I think it`s COOL place!',
                    time: '12:32',
                    isSentByMe: false,
                    isEdited: true,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: ChatBubble(
                    text: 'Hi man! I find very good flat near Kotti. Let`s roll',
                    time: '12:35',
                    isSentByMe: true,
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: ChatBubble(
                    text: 'Did you check this flat?',
                    time: '12:35',
                    isSentByMe: true,
                    isFailed: true,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.black,
            child: Row(
              children: [
                const Icon(Icons.insert_emoticon, color: Colors.white),
                const SizedBox(width: 8),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Message...',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                    ),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const Icon(Icons.attach_file, color: Colors.white),
                const SizedBox(width: 8),
                const Icon(Icons.send, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String text;
  final String time;
  final bool isSentByMe;
  final bool isEdited;
  final bool isFailed;

  const ChatBubble({
    super.key,
    required this.text,
    required this.time,
    required this.isSentByMe,
    this.isEdited = false,
    this.isFailed = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: isSentByMe ? Colors.grey[700] : Colors.grey[850],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment:
            isSentByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        children: [
          Text(text, style: const TextStyle(color: Colors.white)),
          const SizedBox(height: 4),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (isEdited)
                const Text('edited ',
                    style: TextStyle(fontSize: 10, color: Colors.grey)),
              Text(time, style: const TextStyle(fontSize: 10, color: Colors.grey)),
              if (isSentByMe && !isFailed)
                const Icon(Icons.done_all, size: 16, color: Colors.grey),
              if (isFailed)
                const Text('\nNot sent. Tap to try again.',
                    style: TextStyle(fontSize: 10, color: Colors.red)),
            ],
          )
        ],
      ),
    );
  }
}
