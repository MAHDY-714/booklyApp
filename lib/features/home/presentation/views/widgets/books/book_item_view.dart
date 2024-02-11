import 'package:bookly_app/core/utils/constants.dart';
import 'package:bookly_app/core/utils/widget/error_icon_widget.dart';
import 'package:bookly_app/core/utils/widget/loading_indecator._widget.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class BookItemBuilder extends StatelessWidget {
  const BookItemBuilder({
    super.key,
    required this.thumbnailUrl,
  });
  final String thumbnailUrl;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      clipBehavior: Clip.antiAlias,
      child: AspectRatio(
        //a1/a2
        //a1 : a2
        //a1 => width, a2=> height
        aspectRatio: 2.6 / 4,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: thumbnailUrl,
          placeholder: (context, url) => const LoadingIndecatorWidget(),
          errorWidget: (context, url, error) => const ErrorIconWidget(),
        ),
      ),
    );
  }
}
