import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: TextFormField(
        cursorColor: Colors.white30,
        decoration: InputDecoration(

          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide(color: Colors.transparent)),
          contentPadding: const EdgeInsets.all(0),
          filled: true,
          fillColor: Colors.white30,
          hintText: 'Search',
          hintStyle: TextStyle(color: Colors.white70),
          prefixIcon: Icon(
            Icons.search,
            color: Colors.white70,
            size: 20,
          ),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: BorderSide(color: Colors.transparent)),
        ),
      ),
    );
  }
}
