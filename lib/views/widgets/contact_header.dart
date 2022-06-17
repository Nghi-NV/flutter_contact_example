import 'package:flutter/material.dart';

class ContactHeader extends StatelessWidget {
  const ContactHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Contacts',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          IconButton(
            onPressed: () {},
            iconSize: 28,
            icon: const Icon(Icons.add_circle),
          )
        ],
      ),
    );
  }
}
