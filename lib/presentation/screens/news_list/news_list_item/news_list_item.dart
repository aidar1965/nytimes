import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../common/common_functions.dart';
import '../../../../domain/models/article.dart';
import '../../../constants/constants.dart';
import '../../../constants/palette.dart';
import '../../../router/app_router.dart';

class NewsListItem extends StatelessWidget {
  const NewsListItem({
    super.key,
    required this.article,
    required this.isConnected,
  });

  final Article article;
  final bool isConnected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (isConnected) {
          context.router.push(ArticleRoute(
            url: article.url,
          ));
        } else {
          CommonFunctions.showMessage(context, 'You are offline');
        }
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 12, top: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (article.image != null)
              Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: ClipRect(
                  child: SizedBox(
                    height: 260,
                    width: double.infinity,
                    child: CachedNetworkImage(
                      fit: BoxFit.contain,
                      imageUrl:
                          '${Constants.nyTimesImagePrefix}${article.image!}',
                      errorWidget: (context, url, error) =>
                          SvgPicture.asset('assets/images/no_image.svg'),
                      progressIndicatorBuilder: (context, url, progress) =>
                          const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                  ),
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
              child: Text(
                article.title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            if (authors(article.authors) != null)
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
                child: Text(
                  authors(article.authors)!,
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
              child: Text(
                DateFormat('E, d MMM yyyy HH:mm').format(article.date),
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Palette.text),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 24, right: 24, bottom: 8),
              child: IntrinsicHeight(
                child: Row(
                  children: [
                    const VerticalDivider(
                      thickness: 3,
                      color: Palette.accent,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Expanded(
                      child: Text(
                        article.articleAbstract,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium
                            ?.copyWith(fontStyle: FontStyle.italic),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

String? authors(List<String> authors) {
  if (authors.isNotEmpty) {
    String authorsString = authors.first;
    for (int x = 1; x < authors.length; x++) {
      authorsString += ', ${authors[x]}';
    }
    return authorsString;
  } else {
    return null;
  }
}
