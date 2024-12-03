import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:provider/provider.dart';
import 'package:test_animations/provider/feed_provider.dart';
import 'package:test_animations/service/model/feed.dart';
import 'package:test_animations/utils/widgets/animated_card.dart';
import 'package:test_animations/widgets/feed_page/feed_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final ScrollController scrollController;
  List<Feed> feedList = [];
  bool? hasNextPage;
  String? cursor;
  bool isLoading = false;

  @override
  void initState() {
    getFeed(cs: null);
    scrollController = ScrollController();
    scrollController.addListener(loadMoreFeed);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: onRefresh,
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          controller: scrollController,
          slivers: [
            const SliverAppBar(
              clipBehavior: Clip.antiAlias,
              pinned: true,
              elevation: 0,
              automaticallyImplyLeading: false,
              snap: false,
              floating: false,
              expandedHeight: 100,
              flexibleSpace: FlexibleSpaceBar(
                titlePadding: EdgeInsets.only(left: 10, bottom: 16),
                centerTitle: false,
                title: AutoSizeText("Feed"),
              ),
            ),
            AnimationLimiter(
              child: SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: feedList.length,
                  (context, index) {
                    final feed = feedList[index];
                    return Column(
                      children: [
                        AnimatedCard(
                          index: index,
                          widget: FeedCard(feed: feed),
                        ),
                        if (index == feedList.length - 1 && isLoading)
                          const Center(
                            child: Padding(
                              padding: EdgeInsets.all(10),
                              child: CircularProgressIndicator(),
                            ),
                          ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void loadMoreFeed() {
    if (!isLoading &&
        scrollController.position.pixels ==
            scrollController.position.maxScrollExtent &&
        hasNextPage!) {
      getFeed(cs: cursor);
    }
  }

  void getFeed({required String? cs}) async {
    setState(() {
      isLoading = true;
    });

    final response = await context.read<FeedProvider>().getFeeds(cursor: cs);

    setState(() {
      isLoading = false; 
      feedList.addAll(response.data);
      cursor = response.cursor;
      hasNextPage = response.has_next_page;
    });
  }

  Future<void> onRefresh() async {
    setState(() {
      feedList.clear();
      cursor = null;
      hasNextPage = false;
    });
    getFeed(cs: null);
  }
}
