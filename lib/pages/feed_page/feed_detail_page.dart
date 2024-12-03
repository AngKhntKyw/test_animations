import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_animations/provider/feed_input_provider.dart';
import 'package:test_animations/provider/feed_provider.dart';
import 'package:test_animations/service/model/feed.dart';
import 'package:test_animations/widgets/feed_page/comment_list_widget.dart';
import 'package:test_animations/widgets/feed_page/current_comments_widget.dart';
import 'package:test_animations/widgets/feed_page/video_thumbnail_widget.dart';
import 'package:timeago/timeago.dart' as timeago;

class FeedDetailPage extends StatefulWidget {
  final int feedId;
  const FeedDetailPage({super.key, required this.feedId});

  @override
  State<FeedDetailPage> createState() => _FeedDetailPageState();
}

class _FeedDetailPageState extends State<FeedDetailPage> {
  final formKey = GlobalKey<FormState>();
  late final ScrollController scrollController;
  TextEditingController textEditingController = TextEditingController();
  bool isLoading = true;
  Feed? feed;

  @override
  void initState() {
    getFeedById();
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void deactivate() {
    clearCurrentComments();
    super.deactivate();
  }

  void clearCurrentComments() {
    context.read<FeedInputProvider>().clearCurrentComments();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return isLoading
        ? const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          )
        : Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: true,
              title: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundImage:
                        CachedNetworkImageProvider(feed!.owner.profile_url!),
                  ),
                  AutoSizeText(feed!.owner.username),
                ],
              ),
              actions: [
                AutoSizeText(timeago.format(DateTime.parse(feed!.created_at))),
              ],
            ),
            body: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    controller: scrollController,
                    physics: const AlwaysScrollableScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          AutoSizeText(
                            feed!.body,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          if (feed!.media_type == "PHOTO")
                            CachedNetworkImage(
                              imageUrl: feed!.media_url!,
                              cacheKey: feed!.media_url,
                              imageBuilder: (context, imageProvider) =>
                                  Container(
                                margin:
                                    const EdgeInsets.symmetric(vertical: 10),
                                height: size.height / 3,
                                width: size.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  image: DecorationImage(
                                    image: imageProvider,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              progressIndicatorBuilder:
                                  (context, url, progress) {
                                return const Center(
                                  child: CircularProgressIndicator(),
                                );
                              },
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.error),
                            ),
                          if (feed!.media_type == "VIDEO")
                            VideoThumbnailWidget(videoUrl: feed!.media_url!),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const Icon(Icons.favorite, size: 20),
                                  const SizedBox(width: 5),
                                  AutoSizeText("${feed!.like_count}"),
                                ],
                              ),
                              Row(
                                children: [
                                  AutoSizeText("${feed!.comment_count}"),
                                  const SizedBox(width: 5),
                                  const AutoSizeText("comments"),
                                ],
                              ),
                            ],
                          ),
                          const Divider(),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Row(
                                  children: [
                                    const Icon(Icons.favorite, size: 20),
                                    const SizedBox(width: 5),
                                    AutoSizeText("${feed!.like_count}"),
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(Icons.comment, size: 20),
                                    const SizedBox(width: 5),
                                    AutoSizeText("${feed!.comment_count}"),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const Divider(),
                          const CurrentCommentsWidget(),
                          CommentsWidget(
                            feed: feed!,
                            scrollController: scrollController,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Theme.of(context).scaffoldBackgroundColor,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: context
                                .watch<FeedInputProvider>()
                                .textEditingController,
                            onTapOutside: (event) {
                              FocusManager.instance.primaryFocus!.unfocus();
                            },
                            onChanged: (v) =>
                                context.read<FeedInputProvider>().typing(),
                          ),
                        ),
                        IconButton(
                          onPressed: context
                              .read<FeedInputProvider>()
                              .onPressedSendButton,
                          icon: const Icon(Icons.send),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
  }

  void initTextEditingController() {
    context.read<FeedInputProvider>().initializeTextEditingController(
          textEditingController,
          widget.feedId,
          context,
        );
  }

  void getFeedById() async {
    final result =
        await context.read<FeedProvider>().getFeedById(feedId: widget.feedId);
    setState(() {
      isLoading = false;
      feed = result;
      initTextEditingController();
    });
  }
}
