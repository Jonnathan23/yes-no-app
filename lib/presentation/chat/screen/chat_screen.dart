import 'package:flutter/material.dart';
import 'package:yes_no_app/presentation/chat/widgets/my_message_bubble.dart';

const String _urlImage =
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOyhKFUFYAr2Icl1rPheegnTfwzT1lEqLrd1ygVf_xXA&s';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _CustomAppBar(), body: _ChatView());
  }
}

class _CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Padding(
        padding: EdgeInsets.all(4.0),
        child: CircleAvatar(backgroundImage: NetworkImage(_urlImage)),
      ),
      title: const Text('Hola mi amor ❤️'),
      centerTitle: false,
    );
  }

  // 2. Sobrescribimos el método preferredSize para indicarle la altura al Scaffold
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 100,
                itemBuilder: (context, index) {
                  return const MyMessageBubble();
                },
              ),
            ),
            Text('Mundo'),
          ],
        ),
      ),
    );
  }
}
