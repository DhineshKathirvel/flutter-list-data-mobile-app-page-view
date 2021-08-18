import 'package:flutter/material.dart';
import 'package:flutter_list_data/quote.dart';

void main() {
  runApp(MaterialApp(
    home: ListData(),
  ));
}

class ListData extends StatefulWidget {
  @override
  _ListDataState createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {

  List<Quote> quotes=[
    Quote(text: "Design is not just what it looks like and feels like. Design is how it works.", author: "Steve Jobs"),
    Quote(text: "Innovation distinguishes between a leader and a follower.", author: "Steve Jobs"),
    Quote(text: "I want to put a dent in the universe.", author: "Steve Jobs")
  ];

  Widget quoteTemplate(quote){
    return Card(
      child:
      Padding(
        padding: const EdgeInsets.fromLTRB(16.0,16.0,16.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(quote.text,
            style: TextStyle(
              color: Colors.grey[600],
              fontSize: 18.0
              ),
            ),
            SizedBox(height: 14.0),
            Text(quote.author,
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 12.0
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[500],
      appBar: AppBar(
        title: Text("My Favourite Quotes"),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Column(
        children: quotes.map((quote) => quoteTemplate(quote)).toList(),
      )
    );
  }
}
