import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narad/config/routes/auto_routes/routes.gr.dart';
import 'package:narad/core/utils/string_extenstions.dart';
import 'package:narad/features/dashboard/domain/entities/articles.dart';
import 'package:narad/features/dashboard/presentation/news_bloc/news_bloc.dart';
import 'package:timeago/timeago.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(
      builder: (context, state) {
        return state.maybeMap(orElse: () {
          return const Center(
              child: CircularProgressIndicator.adaptive(strokeWidth: 1));
        }, loaded: (loaded) {
          return Scaffold(
            body: ListView(
                children: [...loaded.news.map((e) => ArticleCard(article: e))]),
          );
        }, error: (error) {
          return Center(child: Text(error.message));
        });
      },
    );
  }
}

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
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: Text(
                            article.title ?? '',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                            "${article.source?.name ?? ''} ◯ ${format(DateTime.parse(article.publishedAt ?? ''))}",
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold)),
                      ],
                    ),
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
                        child: Image.network(article.urlToImage ?? '',
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
