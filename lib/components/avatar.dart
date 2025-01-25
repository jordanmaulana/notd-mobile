import 'package:flutter/material.dart';
import 'texts.dart';

class Avatar extends StatelessWidget {
  final String name;
  const Avatar(this.name, {super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      child: VText(name.initial),
    );
  }
}
