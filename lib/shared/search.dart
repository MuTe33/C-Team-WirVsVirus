import 'package:flutter/material.dart';

class ArticleSearch extends SearchDelegate {
  final List clubs;

  ArticleSearch({@required this.clubs});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final results =
        clubs.where((c) => c.name.toLowerCase().contains(query.toLowerCase()));

    return ListView(
        children: results
            .map((c) => ListTile(
                  title: Text(
                    c.name,
                    style: TextStyle(color: Colors.red),
                  ),
                  leading: Icon(
                    Icons.local_bar,
                    color: Colors.white,
                  ),
                  onTap: () {
                    close(context, c);
                  },
                ))
            .toList());
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final results =
        clubs.where((c) => c.name.toLowerCase().contains(query.toLowerCase()));

    return ListView(
        children: results
            .map((c) => ListTile(
                  title: Text(
                    c.name,
                    style: TextStyle(color: Colors.white),
                  ),
                  leading: Icon(Icons.local_bar, color: Colors.white),
                  onTap: () {
                    close(context, c);
                  },
                ))
            .toList());
  }
}
