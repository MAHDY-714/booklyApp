import 'package:bookly_app/features/home/data/model/books_model/books_model.dart';
import 'package:bookly_app/features/home/presentation/manager/fetchSimilarBooksCubit/similar_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/bookDetails/book_details_body_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookDetailsView extends StatefulWidget {
  const BookDetailsView({super.key, required this.booksModel});

  final BooksModel booksModel;

  @override
  State<BookDetailsView> createState() => _BookDetailsViewState();
}

class _BookDetailsViewState extends State<BookDetailsView> {
  @override
  void initState() {
    BlocProvider.of<SimilarBooksCubit>(context).fetchSimailrBooks(
      category: widget.booksModel.volumeInfo.categories?[0] ?? 'unKnown',
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BookDetailsBodyView(
        booksModel: widget.booksModel,
      ),
    );
  }
}
