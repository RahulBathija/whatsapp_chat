import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'providers/chat_provider.dart';
import 'screens/chat_screen.dart';

void main() {
  runApp(WhatsAppClone());
}

class WhatsAppClone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ChatProvider()),
      ],
      child: MaterialApp(
        title: 'WhatsApp Clone',
        theme: ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: HomeScreen(),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WhatsApp'),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              'assets/search.svg',
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: SvgPicture.asset(
              'assets/more_vert.svg',
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: ChatListScreen(),
    );
  }
}

class ChatListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage('assets/avatar.png'), // Add avatar images to your assets folder
          ),
          title: Text('User 1'),
          subtitle: Text('Tap to chat'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatScreen(sender: 'User 1')),
            );
          },
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.grey,
            backgroundImage: AssetImage('assets/avatar.png'), // Add avatar images to your assets folder
          ),
          title: Text('User 2'),
          subtitle: Text('Tap to chat'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ChatScreen(sender: 'User 2')),
            );
          },
        ),
      ],
    );
  }
}
