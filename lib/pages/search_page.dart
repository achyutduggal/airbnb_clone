import 'package:flutter/material.dart';

class searchPage extends StatefulWidget {
  const searchPage({super.key});

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  List<String> recentSearches = ['Flutter', 'Dart', 'Firebase'];
  List<String> searchedarray = [];
  String query = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: TextField(
          onChanged: (value) {
            setState(() {
              query = value;
            });
          },
          decoration: InputDecoration(
            hintText: 'Search...',
          ),
        ),
      ),
      body: query.isEmpty
          ? ListView.builder(
              itemCount: recentSearches.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(recentSearches[index]),
                  onTap: () {
                    // Implement search logic
                  },
                );
              },
            )
          : ListView.builder(
              itemCount: searchedarray.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(searchedarray[index]),
                  onTap: () {},
                );
              },
            ),
    );
  }
}
