import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        _MessageBubble(colors: colors),
        const SizedBox(height: 10),
      ],
    );
  }
}

class _MessageBubble extends StatelessWidget {
  final ColorScheme colors;
  const _MessageBubble({required this.colors});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colors.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Text(
          'Aliqua anim aliquip',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
