import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nytimes/data/api/models/section.dart';

import '../../../domain/environment/di.dart';
import '../../../generated/locale_keys.g.dart';
import '../../common/common_functions.dart';
import 'bloc/favorites_bloc.dart';

@RoutePage()
class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Di.of(context).buildFavoritesBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            LocaleKeys.screenNewsListTitle.tr(),
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: BlocBuilder<FavoritesBloc, FavoritesState>(
          builder: (context, state) => state.map(
              pending: (_) => const Center(
                    child: CircularProgressIndicator(),
                  ),
              data: (state) => ListView.builder(
                    itemCount: Section.values.length,
                    itemBuilder: (context, index) => CheckboxListTile(
                      title: Text(CommonFunctions.fromSection(
                          Section.values.elementAt(index))),
                      value: state.favorites.map((e) => e.section).toList().any(
                          (element) =>
                              element == Section.values.elementAt(index)),
                      onChanged: (value) {
                        BlocProvider.of<FavoritesBloc>(context)
                            .add(FavoritesEvent.sectionSelectedOrUnselected(
                          section: Section.values.elementAt(index),
                        ));
                      },
                    ),
                  )),
        ),
      ),
    );
  }
}
