import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchInput extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _SearchInputState();
  }
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    return Material(
        elevation: 4,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: EdgeInsets.all(3),
            child: TextField(
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 24,vertical: 14),
                  border: InputBorder.none,
                  hintText: 'Search any food',
                  suffixIcon: Icon(Icons.search)),
            ),
        )
    );
  }
}
