import 'package:flutter/material.dart';
import 'package:flutter_list_data/quote.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;

  QuoteCard({required this.quote});

  @override
  Widget build(BuildContext context) {
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
}