import 'package:flutter/material.dart';
import 'chat_detail_screen.dart';

class ContactsScreen extends StatelessWidget {
  const ContactsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final contacts = [
      {'name': 'Aaron Jones', 'image': 'https://i.pravatar.cc/150?img=1'},
      {'name': 'Amelia Kendrick', 'image': 'https://i.pravatar.cc/150?img=2'},
      {'name': 'Anna D. Bennett', 'image': 'https://i.pravatar.cc/150?img=3'},
      {'name': 'Ben Kowalski', 'image': 'https://i.pravatar.cc/150?img=4'},
      {'name': 'Ben Kowalski 2', 'image': 'https://i.pravatar.cc/150?img=5'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contacts', style: TextStyle(fontSize: 20)),
        actions: const [
          Icon(Icons.add, size: 26),
          SizedBox(width: 16),
          Icon(Icons.more_vert, size: 26),
          SizedBox(width: 8),
        ],
      ),
      body: SafeArea(
        child: ListView.builder(
          padding: const EdgeInsets.symmetric(vertical: 8),
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            final contact = contacts[index];
            return ListTile(
              leading: CircleAvatar(
                radius: 28, // Lebih besar dari default (20)
                backgroundImage: NetworkImage(contact['image']!),
              ),
              title: Text(
                contact['name']!,
                style: const TextStyle(fontSize: 18), // Ukuran font lebih besar
              ),
              contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatDetailScreen(
                      name: contact['name']!,
                      imageUrl: contact['image']!,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
