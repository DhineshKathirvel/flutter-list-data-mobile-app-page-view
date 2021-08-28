import 'package:flutter/material.dart';
import 'package:flutter_list_data/quote.dart';
import 'quote_card.dart';

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
        children: quotes.map((quote) => QuoteCard(
            quote: quote,
            delete: (){
              setState(() {
                quotes.remove(quote);
              });
            },
        )).toList(),
      )
    );
  }
}


