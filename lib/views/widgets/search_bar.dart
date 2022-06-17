import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Contacts',
          floatingLabelBehavior: FloatingLabelBehavior.never,
          // hintText: 'Contacts',
          prefixIcon: const Icon(Icons.search),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(13),
          ),
        ),
        textInputAction: TextInputAction.search,
        keyboardType: TextInputType.name,
      ),
    );
  }
}
