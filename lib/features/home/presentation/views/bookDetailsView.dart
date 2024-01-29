import 'package:bookly_app/features/home/presentation/views/widgets/bookDetails/bookDetailsBodyView.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsBodyView(),
    );
  }
}
