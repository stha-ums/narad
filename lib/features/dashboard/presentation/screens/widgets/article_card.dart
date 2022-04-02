import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narad/config/routes/routes.gr.dart';
import 'package:narad/core/utils/string_extenstions.dart';
import 'package:narad/features/dashboard/domain/entities/articles.dart';
import 'package:narad/features/dashboard/presentation/favorite_articles/favorite_articles_bloc.dart';
import 'package:timeago/timeago.dart';

class ArticleCard extends StatelessWidget {
  final Article article;
  const ArticleCard({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      color: Theme.of(context).cardColor.withOpacity(.6),
      child: InkWell(
        onTap: () {
          context.router.push(ArticleScreenRoute(article: article));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FittedBox(
                            child: Text(
                                article.source?.name?.getInitials() ?? ''))),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Text(
                            article.title ?? '',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                color: Theme.of(context).colorScheme.primary,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                            "${article.source?.name ?? ''} ◯ ${format(DateTime.parse(article.publishedAt ?? ''))}",
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  BlocBuilder<FavoriteArticlesBloc, FavoriteArticlesState>(
                    builder: (context, state) {
                      return IconButton(
                        icon: Icon(
                          state.maybeMap(orElse: () {
                            return false;
                          }, loaded: (loaded) {
                            return loaded.articles.contains(article);
                          })
                              ? FluentIcons.heart_20_filled
                              : FluentIcons.heart_20_regular,
                        ),
                        onPressed: () {
                          if (state.maybeMap(orElse: () {
                            return false;
                          }, loaded: (loaded) {
                            return loaded.articles.contains(article);
                          })) {
                            BlocProvider.of<FavoriteArticlesBloc>(context).add(
                                FavoriteArticlesEvent.removeFromFavories(
                                    article: article));
                          } else {
                            BlocProvider.of<FavoriteArticlesBloc>(context).add(
                                FavoriteArticlesEvent.addToFavorites(
                                    article: article));
                          }
                        },
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10),
              if (article.urlToImage != null)
                Hero(
                  tag: article.title ?? "",
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: AspectRatio(
                        aspectRatio: 16 / 9,
                        child: CachedNetworkImage(
                            imageUrl: article.urlToImage ?? '',
                            fit: BoxFit.cover)),
                  ),
                ),
              if (article.urlToImage != null) const SizedBox(height: 10),
              Text(article.description ?? '')
            ],
          ),
        ),
      ),
    );
  }
}
