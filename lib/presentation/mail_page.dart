import 'package:flutter/material.dart';

class MailPage extends StatelessWidget {
  const MailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mail'),
        actions: [
          // IconButton(
          //   icon: const Icon(Icons.search),
          //   onPressed: () {
          //     // TODO: Implement search functionality
          //   },
          // ),
        ],
      ),
      body: ListView.builder(
        itemCount: 20, // Replace with actual email count
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title: Text('Email Subject ${index + 1}'),
            subtitle: Text('Sender ${index + 1} • Brief content preview...'),
            trailing: const Text('12:34 PM'),
            onTap: () {
              // TODO: Implement email opening functionality
            },
          );
        },
      ),
    );
  }
}
