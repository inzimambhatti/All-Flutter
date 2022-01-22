import 'package:animated_search_bar/animated_search_bar.dart';
import 'package:flutter/material.dart';



class SearchScreen extends StatefulWidget {
  static String routeName="/search_screen";
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  String searchText = "";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              AnimatedSearchBar(
                label: "Search Something Here",
                onChanged: (value) {
                  print("value on Change");
                  setState(() {
                    searchText = value;
                  });
                },
              ),
              Text(
                searchText,
                style: TextStyle(fontSize: 24),
              )
            ],
          ),
        ),
      ),
    );
  }
}