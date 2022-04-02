import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:narad/features/dashboard/presentation/news_bloc/news_bloc.dart';

import 'widgets/article_card.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsBloc, NewsState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () {
            return const Center(
                child: CircularProgressIndicator.adaptive(strokeWidth: 1));
          },
          loaded: (loaded) {
            return Scaffold(
              body: RefreshIndicator(
                onRefresh: () async {
                  BlocProvider.of<NewsBloc>(context)
                      .add(const NewsEvent.fetch());
                },
                child: ListView(padding: const EdgeInsets.all(16), children: [
                  ...loaded.news.map((e) => ArticleCard(article: e))
                ]),
              ),
            );
          },
          error: (error) {
            return Center(child: Text(error.message));
          },
        );
      },
    );
  }
}
