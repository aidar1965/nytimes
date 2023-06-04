import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
  const NewsListScreen({super.key, this.needToReload});

  final bool? needToReload;

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
    _bloc = Di.of(context).buildNewsListBloc(widget.needToReload);
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

  final textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
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
      child: Scaffold(
        endDrawer: Drawer(
            child: _SectionListView(selectedSection: widget.selectedSection)),
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              InkWell(
                onTap: () => BlocProvider.of<NewsListBloc>(context).add(
                  const NewsListEvent.dataRequested(),
                ),
                child: Text(
                  LocaleKeys.screenNewsListTitle.tr(),
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
              ),
              if (widget.selectedSection != null)
                Flexible(
                  fit: FlexFit.loose,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      '${LocaleKeys.screenNewsListCategory.tr()} ${CommonFunctions.fromSection(widget.selectedSection!)}',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                ),
            ],
          ),
          actions: [
            Builder(builder: (context) {
              return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: const Icon(
                    CustomIcons.filter,
                    size: 10,
                  ));
            })
          ],
        ),
        body: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: CommonEditField(
                        controller: textEditingController,
                        hintText: LocaleKeys.screenNewsListSearchLocally.tr(),
                        onTapOutside: (event) {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                      ),
                    ),
                    SizedBox(
                      height: Constants.inputFieldDefaultHeight,
                      child: IconButton(
                          color: Palette.divider,
                          onPressed: () {
                            BlocProvider.of<NewsListBloc>(context).add(
                              NewsListEvent.search(
                                  text: textEditingController.text),
                            );
                          },
                          icon: const Icon(
                            CustomIcons.search,
                            color: Palette.textLight,
                          )),
                    )
                  ],
                ),
              ),
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
    );
  }
}

class _SectionListView extends StatefulWidget {
  const _SectionListView({super.key, this.selectedSection});

  final Section? selectedSection;

  @override
  State<_SectionListView> createState() => _SectionListViewState();
}

class _SectionListViewState extends State<_SectionListView> {
  Section? selectedSection;

  @override
  void initState() {
    super.initState();
    selectedSection = widget.selectedSection;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        Text(
          LocaleKeys.screenNewsListSearchFilter.tr(),
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        if (selectedSection != null)
          SizedBox(
            height: 40,
            child: RadioListTile(
                title: Text(LocaleKeys.screenNewsListClearFilters.tr()),
                value: null,
                groupValue: selectedSection,
                onChanged: (section) {
                  setState(() {
                    selectedSection = section;
                  });
                  BlocProvider.of<NewsListBloc>(context).add(
                      const NewsListEvent.sectionSelected(
                          selectedSection: null));
                  Scaffold.of(context).closeEndDrawer();
                }),
          ),
        Expanded(
          child: ListView.builder(
              shrinkWrap: true,
              itemCount: Section.values.length,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 40,
                  child: RadioListTile(
                      title: Text(
                        CommonFunctions.fromSection(
                          Section.values.elementAt(index),
                        ),
                      ),
                      value: Section.values.elementAt(index),
                      groupValue: selectedSection,
                      onChanged: (section) {
                        setState(() {
                          selectedSection = section;
                        });
                        BlocProvider.of<NewsListBloc>(context).add(
                            NewsListEvent.sectionSelected(
                                selectedSection: selectedSection));
                        Scaffold.of(context).closeEndDrawer();
                      }),
                );
              }),
        ),
      ],
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
