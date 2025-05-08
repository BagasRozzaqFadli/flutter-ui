import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  const CallsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> calls = [
      {
        'name': 'Aaron Jones',
        'image': 'https://i.pravatar.cc/150?img=1',
        'icon': Icons.call_received,
        'time': '12:11',
        'duration': '0:35 min'
      },
      {
        'name': 'Aaron Jones',
        'image': 'https://i.pravatar.cc/150?img=1',
        'icon': Icons.call_missed,
        'time': '11:11',
        'duration': '1:21 min'
      },
      {
        'name': 'Aaron Jones',
        'image': 'https://i.pravatar.cc/150?img=1',
        'icon': Icons.call_received,
        'time': '10:15',
        'duration': '0:10 min'
      },
      {
        'name': 'Aaron Jones',
        'image': 'https://i.pravatar.cc/150?img=1',
        'icon': Icons.call_received,
        'time': '10:03',
        'duration': '0:07 min'
      },
    ];

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Calls'),
          actions: const [
            Icon(Icons.add),
            SizedBox(width: 16),
            Icon(Icons.more_vert),
            SizedBox(width: 8),
          ],
          bottom: const TabBar(
            tabs: [
              Tab(text: 'ALL'),
              Tab(text: 'FAVORITES'),
              Tab(text: 'MISSED'),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: calls.length,
          itemBuilder: (context, index) {
            final Map<String, dynamic> call = calls[index];
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(call['image']),
              ),
              title: Text(call['name']),
              subtitle: Text('Period: ${call['duration']}'),
              trailing: Text(call['time']),
              textColor: Colors.white,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              visualDensity: VisualDensity.compact,
              minLeadingWidth: 32,
            );
          },
        ),
      ),
    );
  }
}
