import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marquee/marquee.dart';

import '../../../data/api/models/section.dart';
import '../../../domain/environment/di.dart';
import '../../../domain/models/article.dart';
import '../../../generated/locale_keys.g.dart';
import '../../common/common_functions.dart';
import '../../common/widgets/common_edit_field.dart';
import '../../constants/constants.dart';
import '../../constants/palette.dart';

import '../../theme/custom_icons.dart';
import 'bloc/news_list_bloc.dart';
import 'news_list_item/news_list_item.dart';

@RoutePage()
class NewsListScreen extends StatefulWidget {
  const NewsListScreen({
    super.key,
  });

  @override
  State<NewsListScreen> createState() => _NewsListScreenState();
}

class _NewsListScreenState extends State<NewsListScreen> {
  late NewsListBloc _bloc;

  @override
  void didUpdateWidget(NewsListScreen oldWidget) {
    _bloc.add(const NewsListEvent.dataRequested());
    super.didUpdateWidget(oldWidget);
  }

  @override
  void didChangeDependencies() {
    _bloc = Di.of(context).buildNewsListBloc();
    _bloc.add(const NewsListEvent.dataRequested());
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
        value: _bloc,
        child: BlocConsumer<NewsListBloc, NewsListState>(
          listener: (context, state) => state.mapOrNull(
              error: (state) =>
                  CommonFunctions.showMessage(context, state.errorText!)),
          buildWhen: (previous, current) => current.maybeMap(
              dataReceived: (_) => true,
              searchResult: (_) => true,
              orElse: () => false),
          builder: (context, state) => state.maybeMap(
              orElse: () => throw UnimplementedError(),
              dataReceived: (state) => NewsListView(
                    articles: state.articles,
                    selectedSection: state.selectedSection,
                    isConnected: state.isConnected,
                    isPending: state.isPending,
                  ),
              searchResult: (state) => NewsListView(
                    articles: state.articles,
                    selectedSection: null,
                    isConnected: true,
                  )),
        ));
  }
}

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key,
    required this.articles,
    this.selectedSection,
    required this.isConnected,
    this.isPending = false,
  });

  final List<Article> articles;
  final Section? selectedSection;
  final bool isConnected;
  final bool isPending;

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  late ScrollController _scrollController;

  double maxScrollPosition = -1;
  late double scrollPaginationOffset;

  late TextEditingController textEditingController;

  @override
  void initState() {
    super.initState();
    textEditingController = TextEditingController();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
    textEditingController.dispose();
  }

  @override
  void didChangeDependencies() {
    _scrollController.addListener(() {
      scrollPaginationOffset = 2 * MediaQuery.of(context).size.height;

      if (_scrollController.position.pixels > maxScrollPosition &&
          _scrollController.position.maxScrollExtent <
              (_scrollController.offset + scrollPaginationOffset)) {
        if (widget.isConnected) {
          BlocProvider.of<NewsListBloc>(context)
              .add(const NewsListEvent.dataRequested());
        }
      }
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        BlocProvider.of<NewsListBloc>(context)
            .add(const NewsListEvent.refresh());
      },
      child: SafeArea(
        child: Scaffold(
          body: CustomScrollView(
            controller: _scrollController,
            slivers: [
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(left: 16, top: 43, bottom: 8),
                  child: Text(
                    'Browse',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff333647)),
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.only(left: 16, bottom: 8),
                  child: Text(
                    'Discover things of this world',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff7C82A1)),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: CommonEditField(
                    controller: textEditingController,
                    hintText: 'Search',
                    prefixIcon: const Icon(CustomIcons.search,
                        size: 20, color: Color(0xff7C82A1)),
                    backgroundColor: const Color(0xffF3F4F6),
                    borderColor: Colors.transparent,
                    onTapOutside: (event) {
                      FocusManager.instance.primaryFocus?.unfocus();
                    },
                    onChanged: (t) {
                      BlocProvider.of<NewsListBloc>(context)
                          .add(NewsListEvent.searchTextChanged(text: t));
                    },
                  ),
                ),
              ),
              const SliverToBoxAdapter(
                child: SizedBox(height: 24),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                    height: 32,
                    child: ListView.builder(
                        itemCount: Section.values.length + 1,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: ((context, index) {
                          return index == 0
                              ? SectionButton(
                                  text: 'All categories',
                                  isSelected: widget.selectedSection == null,
                                  onTap: () {
                                    BlocProvider.of<NewsListBloc>(context).add(
                                        const NewsListEvent.sectionSelected(
                                            selectedSection: null));
                                  },
                                )
                              : SectionButton(
                                  text: CommonFunctions.fromSection(
                                      Section.values.elementAt(index - 1)),
                                  isSelected: widget.selectedSection ==
                                      Section.values.elementAt(index - 1),
                                  onTap: () {
                                    BlocProvider.of<NewsListBloc>(context).add(
                                        NewsListEvent.sectionSelected(
                                            selectedSection: Section.values
                                                .elementAt(index - 1)));
                                  },
                                );
                        }))),
              ),
              widget.isPending == false
                  ? SliverList(
                      delegate: SliverChildBuilderDelegate(
                        childCount: widget.articles.length,
                        (context, index) => Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            NewsListItem(
                              article: widget.articles.elementAt(index),
                              isConnected: widget.isConnected,
                            ),
                            const Divider(height: 1, color: Palette.divider)
                          ],
                        ),
                      ),
                    )
                  : const SliverFillRemaining(
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

class SectionButton extends StatelessWidget {
  const SectionButton(
      {super.key,
      required this.text,
      required this.isSelected,
      required this.onTap});

  final String text;
  final bool isSelected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Ink(
          height: 32,
          decoration: BoxDecoration(
              color: isSelected
                  ? const Color(0xff475AD7)
                  : const Color(0xffF3F4F6),
              borderRadius: BorderRadius.circular(16)),
          child: InkWell(
              onTap: () {
                onTap();
              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      text.length > 16
                          ? SizedBox(
                              width: 120,
                              child: Marquee(
                                  text: text,
                                  blankSpace: 24,
                                  pauseAfterRound: const Duration(seconds: 3),
                                  style: TextStyle(
                                    color: isSelected
                                        ? Palette.background
                                        : Palette.text,
                                  )),
                            )
                          : Text(text,
                              style: TextStyle(
                                color: isSelected
                                    ? Palette.background
                                    : Palette.text,
                              )),
                    ],
                  ),
                ),
              ))),
    );
  }
}

class Pending extends StatelessWidget {
  const Pending({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
