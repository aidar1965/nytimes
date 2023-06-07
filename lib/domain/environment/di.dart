// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: prefer_relative_imports, directives_ordering

import 'package:flutter/widgets.dart';

// **************************************************************************
// DepGen code generator
// **************************************************************************

import 'package:nytimes/domain/interfaces/i_api.dart';
import 'package:nytimes/domain/interfaces/i_articles_repository.dart';
import 'package:nytimes/domain/interfaces/i_favorites_repository.dart';
import 'package:nytimes/presentation/screens/favorites/bloc/favorites_bloc.dart';
import 'package:nytimes/presentation/screens/news_list/bloc/news_list_bloc.dart';

  
class Di extends InheritedWidget {
  const Di({Key? key, required Widget child, required this.environment})
      : super(key: key, child: child);
  
  // ---------------------------------------------------------------------------  
  final Map<Type, Object> environment;

  // ---------------------------------------------------------------------------
  static Di of(BuildContext context) {
    final Di? di = context.findAncestorWidgetOfExactType<Di>();
    if (di == null) {
      throw UnimplementedError('Di is not initialized in context');
    }
    return di;
  }

  // ---------------------------------------------------------------------------
  @override
  bool updateShouldNotify(Di oldWidget) {
    return false;
  }

  // ---------------------------------------------------------------------------
  T g<T>() => environment[T] as T;

  // ---------------------------------------------------------------------------
  T? mayBeGet<T>() => environment.containsKey(T) ? environment[T] as T : null;

  

  // ---------------------------------------------------------------------------
  FavoritesBloc buildFavoritesBloc(
  ) => FavoritesBloc(
      favoritesRepository: g<IFavoritesRepository>(),
    );


  // ---------------------------------------------------------------------------
  NewsListBloc buildNewsListBloc(
  ) => NewsListBloc(
      api: g<IApi>(),
      articlesRepository: g<IArticlesRepository>(),
    );

}