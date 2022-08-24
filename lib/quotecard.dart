import 'quotes.dart';
import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  const QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 203, 188, 55),
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Center(
              child: Text(
                quote.text,
                style: const TextStyle(
                  fontSize: 20.0,
                  color: Color.fromARGB(255, 52, 50, 50),
                ),
              ),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Center(
              child: Text(
                quote.author,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 27, 27, 27),
                ),
              ),
            ),
            SizedBox(
              height: 6.0,
            ),
            FlatButton.icon(
              onPressed: delete(),
              label: Text('Delete Quote'),
              icon: Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
