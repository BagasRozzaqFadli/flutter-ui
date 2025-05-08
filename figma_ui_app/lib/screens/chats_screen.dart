import 'package:flutter/material.dart';

class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final chats = [
      {
        'name': 'Birthday gift',
        'image': 'https://i.pravatar.cc/150?img=6',
        'time': '12:11',
        'message': 'You\nIt’s the one week of the year in which you get the chance to take...'
      },
      {
        'name': 'Christian Dalonzo',
        'image': 'https://i.pravatar.cc/150?img=7',
        'time': '12:07',
        'message': 'You\nIt’s the one week of the year in which you get the chance to take...'
      },
      {
        'name': 'Roomates',
        'image': 'https://i.pravatar.cc/150?img=8',
        'time': '09:11',
        'message': 'You\nIt’s the one week of the year in which you get the chance to take...'
      },
      {
        'name': 'Amy Aronoff',
        'image': 'https://i.pravatar.cc/150?img=9',
        'time': '08:32',
        'message': 'You\nIt’s the one week of the year in which you get the chance to take...'
      },
      {
        'name': 'Jeremy, Carry, Matthew...',
        'image': '',
        'time': '08:21',
        'message': 'You\nIt’s the one week of the year in which you get the chance to take...'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Chats'),
        actions: const [
          Icon(Icons.edit),
          SizedBox(width: 16),
        ],
      ),
      body: ListView.builder(
        itemCount: chats.length,
        itemBuilder: (context, index) {
          final chat = chats[index];
          return ListTile(
            leading: chat['image']!.isNotEmpty
                ? CircleAvatar(backgroundImage: NetworkImage(chat['image']!))
                : const CircleAvatar(child: Text('JB')),
            title: Text(chat['name']!),
            subtitle: Text(chat['message']!, maxLines: 2, overflow: TextOverflow.ellipsis),
            trailing: Text(chat['time']!),
          );
        },
      ),
    );
  }
}
