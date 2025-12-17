import 'package:flutter/material.dart';
import 'book.dart';

class BookDetails extends StatelessWidget {
  final Book book;

  const BookDetails({super.key, required this.book});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(book.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(backgroundImage: NetworkImage(book.imageUrl)),
            const SizedBox(height: 20),
            Text(
              book.title,
              style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Text(book.author, style: const TextStyle(fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
