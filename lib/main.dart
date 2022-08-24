import 'quotes.dart';
import 'package:flutter/material.dart';
import 'quotecard.dart';

void main() => runApp(const MaterialApp(home: Quotes()));

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  List<Quote> quotes = [
    Quote(author: 'oscar ', text: 'iam oscar how are you'),
    Quote(author: 'paul ', text: 'iam paul how are you'),
    Quote(author: 'rodreguez ', text: 'iam rodreguez how are you')
  ];

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: const Color.fromARGB(255, 208, 206, 206),
      appBar: AppBar(
        title: const Text('quotes'),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    ));
  }
}
