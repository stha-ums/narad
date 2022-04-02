import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narad/config/localization/app_localization.dart';
import 'package:narad/features/dashboard/presentation/favorite_articles/favorite_articles_bloc.dart';
import 'package:narad/features/dashboard/presentation/screens/widgets/article_card.dart';

class FavoriteNews extends StatelessWidget {
  const FavoriteNews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FavoriteArticlesBloc, FavoriteArticlesState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () {
            return const Center(
                child: CircularProgressIndicator.adaptive(strokeWidth: 1));
          },
          loaded: (loaded) {
            if (loaded.articles.isEmpty) {
              return Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      FluentIcons.heart_24_regular,
                      size: 50,
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    const SizedBox(width: 10),
                    Text(
                      AppLocalizations.of(context)?.nofavArticle ??
                          'No Favorite Articles',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    )
                  ],
                ),
              );
            }
            return Scaffold(
              body: ListView(children: [
                ...loaded.articles.map((e) => ArticleCard(article: e))
              ]),
            );
          },
          error: (error) {
            return Center(child: Text(error.error));
          },
        );
      },
    );
  }
}
