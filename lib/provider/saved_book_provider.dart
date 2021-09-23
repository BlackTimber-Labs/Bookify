import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../model/saved_book.dart';

/// Provider for the Saved Books
class SavedBooksProvider with ChangeNotifier {
  final List<SavedBook> _bookList = <SavedBook>[];

  /// Getter of the saved book list.
  List<SavedBook> get bookList => _bookList;

  /// Function to add the book in the getter list.
  Future<void> addBook(
    String userID,
    String id,
    String title,
    String author,
    String imgUrl,
    String viewUrl,
    String downloadUrl,
  ) async {
    await FirebaseFirestore.instance
        .collection('savedBooks')
        .doc(userID)
        .collection('books')
        .add(<String, dynamic>{
      'id': id,
      'title': title,
      'author': author,
      'imgUrl': imgUrl,
      'viewUrl': viewUrl,
      'downloadUrl': downloadUrl,
    });
  }

  /// Function to remove the book from the getter list.
  Future<void> removeBook(
    String id,
    String userID,
    String bookID,
  ) async {
    await FirebaseFirestore.instance
        .collection('savedBooks')
        .doc(userID)
        .collection('books')
        .doc(bookID)
        .delete()
        .then(
          (void value) => print('Book Deleted'),
        )
        .catchError((dynamic error) => print(error));
  }
}
