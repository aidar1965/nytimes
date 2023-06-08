import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marquee/marquee.dart';
import '../../../data/api/models/section.dart';

import '../../../domain/environment/di.dart';
import '../../../generated/locale_keys.g.dart';
import '../../common/common_functions.dart';
import '../../constants/palette.dart';
import 'bloc/favorites_bloc.dart';

@RoutePage()
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Di.of(context).buildFavoritesBloc(),
      child: Scaffold(
        backgroundColor: Palette.background,
        body: BlocBuilder<FavoritesBloc, FavoritesState>(
          builder: (context, state) => state.map(
              pending: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
              data: (state) => Column(
                    children: [
                      Container(
                        width: double.infinity,
                        color: Palette.background,
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 20, right: 20, bottom: 32, top: 28),
                          child: Column(
                            children: [
                              Text(LocaleKeys.screenFavoritesTitle.tr(),
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff333647))),
                              const SizedBox(height: 8),
                              Text(
                                LocaleKeys.screenFavoritesSubtitle.tr(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Flexible(
                        child: GridView.builder(
                            itemCount: Section.values.length,
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              childAspectRatio: 2.22,
                              mainAxisSpacing: 16,
                              crossAxisSpacing: 16,
                            ),
                            itemBuilder: (context, index) => FavoriteView(
                                index: index,
                                isSelected: state.favorites
                                    .map((e) => e.section)
                                    .toList()
                                    .any((element) =>
                                        element ==
                                        Section.values.elementAt(index)),
                                text: CommonFunctions.fromSection(
                                    Section.values.elementAt(index)),
                                onTap: () {
                                  BlocProvider.of<FavoritesBloc>(context).add(
                                      FavoritesEvent
                                          .sectionSelectedOrUnselected(
                                    section: Section.values.elementAt(index),
                                  ));
                                })),
                      ),
                    ],
                  )),
        ),
      ),
    );
  }
}

class FavoriteView extends StatelessWidget {
  const FavoriteView({
    super.key,
    required this.isSelected,
    required this.text,
    required this.onTap,
    required this.index,
  });

  final bool isSelected;
  final String text;
  final Function() onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: index.isEven ? 20 : 0,
        right: index.isOdd ? 20 : 0,
      ),
      child: Ink(
          height: 72,
          width: 160,
          decoration: BoxDecoration(
              color: isSelected ? Color(0xff475AD7) : Color(0xffF3F4F6),
              borderRadius: BorderRadius.circular(12)),
          child: InkWell(
              onTap: () {
                onTap();
              },
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      text.length > 16
                          ? SizedBox(
                              width: 120,
                              child: Marquee(
                                  text: text,
                                  blankSpace: 24,
                                  pauseAfterRound: Duration(seconds: 3),
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
