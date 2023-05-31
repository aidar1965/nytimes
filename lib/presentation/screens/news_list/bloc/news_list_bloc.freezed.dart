// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_list_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NewsListEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page) dataRequested,
    required TResult Function(String text) search,
    required TResult Function() refresh,
    required TResult Function(Section? selectedSection) sectionSelected,
    required TResult Function(ConnectivityResult connectivityResult)
        onConnectivityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? page)? dataRequested,
    TResult? Function(String text)? search,
    TResult? Function()? refresh,
    TResult? Function(Section? selectedSection)? sectionSelected,
    TResult? Function(ConnectivityResult connectivityResult)?
        onConnectivityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page)? dataRequested,
    TResult Function(String text)? search,
    TResult Function()? refresh,
    TResult Function(Section? selectedSection)? sectionSelected,
    TResult Function(ConnectivityResult connectivityResult)?
        onConnectivityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataRequested value) dataRequested,
    required TResult Function(_EventSearch value) search,
    required TResult Function(_EventRefresh value) refresh,
    required TResult Function(_EventSectionSelected value) sectionSelected,
    required TResult Function(_EventConnectivityChanged value)
        onConnectivityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_EventSearch value)? search,
    TResult? Function(_EventRefresh value)? refresh,
    TResult? Function(_EventSectionSelected value)? sectionSelected,
    TResult? Function(_EventConnectivityChanged value)? onConnectivityChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_EventSearch value)? search,
    TResult Function(_EventRefresh value)? refresh,
    TResult Function(_EventSectionSelected value)? sectionSelected,
    TResult Function(_EventConnectivityChanged value)? onConnectivityChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsListEventCopyWith<$Res> {
  factory $NewsListEventCopyWith(
          NewsListEvent value, $Res Function(NewsListEvent) then) =
      _$NewsListEventCopyWithImpl<$Res, NewsListEvent>;
}

/// @nodoc
class _$NewsListEventCopyWithImpl<$Res, $Val extends NewsListEvent>
    implements $NewsListEventCopyWith<$Res> {
  _$NewsListEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EventDataRequestedCopyWith<$Res> {
  factory _$$_EventDataRequestedCopyWith(_$_EventDataRequested value,
          $Res Function(_$_EventDataRequested) then) =
      __$$_EventDataRequestedCopyWithImpl<$Res>;
  @useResult
  $Res call({int? page});
}

/// @nodoc
class __$$_EventDataRequestedCopyWithImpl<$Res>
    extends _$NewsListEventCopyWithImpl<$Res, _$_EventDataRequested>
    implements _$$_EventDataRequestedCopyWith<$Res> {
  __$$_EventDataRequestedCopyWithImpl(
      _$_EventDataRequested _value, $Res Function(_$_EventDataRequested) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_$_EventDataRequested(
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_EventDataRequested implements _EventDataRequested {
  const _$_EventDataRequested({this.page});

  @override
  final int? page;

  @override
  String toString() {
    return 'NewsListEvent.dataRequested(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventDataRequested &&
            (identical(other.page, page) || other.page == page));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventDataRequestedCopyWith<_$_EventDataRequested> get copyWith =>
      __$$_EventDataRequestedCopyWithImpl<_$_EventDataRequested>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page) dataRequested,
    required TResult Function(String text) search,
    required TResult Function() refresh,
    required TResult Function(Section? selectedSection) sectionSelected,
    required TResult Function(ConnectivityResult connectivityResult)
        onConnectivityChanged,
  }) {
    return dataRequested(page);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? page)? dataRequested,
    TResult? Function(String text)? search,
    TResult? Function()? refresh,
    TResult? Function(Section? selectedSection)? sectionSelected,
    TResult? Function(ConnectivityResult connectivityResult)?
        onConnectivityChanged,
  }) {
    return dataRequested?.call(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page)? dataRequested,
    TResult Function(String text)? search,
    TResult Function()? refresh,
    TResult Function(Section? selectedSection)? sectionSelected,
    TResult Function(ConnectivityResult connectivityResult)?
        onConnectivityChanged,
    required TResult orElse(),
  }) {
    if (dataRequested != null) {
      return dataRequested(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataRequested value) dataRequested,
    required TResult Function(_EventSearch value) search,
    required TResult Function(_EventRefresh value) refresh,
    required TResult Function(_EventSectionSelected value) sectionSelected,
    required TResult Function(_EventConnectivityChanged value)
        onConnectivityChanged,
  }) {
    return dataRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_EventSearch value)? search,
    TResult? Function(_EventRefresh value)? refresh,
    TResult? Function(_EventSectionSelected value)? sectionSelected,
    TResult? Function(_EventConnectivityChanged value)? onConnectivityChanged,
  }) {
    return dataRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_EventSearch value)? search,
    TResult Function(_EventRefresh value)? refresh,
    TResult Function(_EventSectionSelected value)? sectionSelected,
    TResult Function(_EventConnectivityChanged value)? onConnectivityChanged,
    required TResult orElse(),
  }) {
    if (dataRequested != null) {
      return dataRequested(this);
    }
    return orElse();
  }
}

abstract class _EventDataRequested implements NewsListEvent {
  const factory _EventDataRequested({final int? page}) = _$_EventDataRequested;

  int? get page;
  @JsonKey(ignore: true)
  _$$_EventDataRequestedCopyWith<_$_EventDataRequested> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventSearchCopyWith<$Res> {
  factory _$$_EventSearchCopyWith(
          _$_EventSearch value, $Res Function(_$_EventSearch) then) =
      __$$_EventSearchCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$_EventSearchCopyWithImpl<$Res>
    extends _$NewsListEventCopyWithImpl<$Res, _$_EventSearch>
    implements _$$_EventSearchCopyWith<$Res> {
  __$$_EventSearchCopyWithImpl(
      _$_EventSearch _value, $Res Function(_$_EventSearch) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$_EventSearch(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_EventSearch implements _EventSearch {
  const _$_EventSearch({required this.text});

  @override
  final String text;

  @override
  String toString() {
    return 'NewsListEvent.search(text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventSearch &&
            (identical(other.text, text) || other.text == text));
  }

  @override
  int get hashCode => Object.hash(runtimeType, text);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventSearchCopyWith<_$_EventSearch> get copyWith =>
      __$$_EventSearchCopyWithImpl<_$_EventSearch>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page) dataRequested,
    required TResult Function(String text) search,
    required TResult Function() refresh,
    required TResult Function(Section? selectedSection) sectionSelected,
    required TResult Function(ConnectivityResult connectivityResult)
        onConnectivityChanged,
  }) {
    return search(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? page)? dataRequested,
    TResult? Function(String text)? search,
    TResult? Function()? refresh,
    TResult? Function(Section? selectedSection)? sectionSelected,
    TResult? Function(ConnectivityResult connectivityResult)?
        onConnectivityChanged,
  }) {
    return search?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page)? dataRequested,
    TResult Function(String text)? search,
    TResult Function()? refresh,
    TResult Function(Section? selectedSection)? sectionSelected,
    TResult Function(ConnectivityResult connectivityResult)?
        onConnectivityChanged,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataRequested value) dataRequested,
    required TResult Function(_EventSearch value) search,
    required TResult Function(_EventRefresh value) refresh,
    required TResult Function(_EventSectionSelected value) sectionSelected,
    required TResult Function(_EventConnectivityChanged value)
        onConnectivityChanged,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_EventSearch value)? search,
    TResult? Function(_EventRefresh value)? refresh,
    TResult? Function(_EventSectionSelected value)? sectionSelected,
    TResult? Function(_EventConnectivityChanged value)? onConnectivityChanged,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_EventSearch value)? search,
    TResult Function(_EventRefresh value)? refresh,
    TResult Function(_EventSectionSelected value)? sectionSelected,
    TResult Function(_EventConnectivityChanged value)? onConnectivityChanged,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _EventSearch implements NewsListEvent {
  const factory _EventSearch({required final String text}) = _$_EventSearch;

  String get text;
  @JsonKey(ignore: true)
  _$$_EventSearchCopyWith<_$_EventSearch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventRefreshCopyWith<$Res> {
  factory _$$_EventRefreshCopyWith(
          _$_EventRefresh value, $Res Function(_$_EventRefresh) then) =
      __$$_EventRefreshCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventRefreshCopyWithImpl<$Res>
    extends _$NewsListEventCopyWithImpl<$Res, _$_EventRefresh>
    implements _$$_EventRefreshCopyWith<$Res> {
  __$$_EventRefreshCopyWithImpl(
      _$_EventRefresh _value, $Res Function(_$_EventRefresh) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventRefresh implements _EventRefresh {
  const _$_EventRefresh();

  @override
  String toString() {
    return 'NewsListEvent.refresh()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EventRefresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page) dataRequested,
    required TResult Function(String text) search,
    required TResult Function() refresh,
    required TResult Function(Section? selectedSection) sectionSelected,
    required TResult Function(ConnectivityResult connectivityResult)
        onConnectivityChanged,
  }) {
    return refresh();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? page)? dataRequested,
    TResult? Function(String text)? search,
    TResult? Function()? refresh,
    TResult? Function(Section? selectedSection)? sectionSelected,
    TResult? Function(ConnectivityResult connectivityResult)?
        onConnectivityChanged,
  }) {
    return refresh?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page)? dataRequested,
    TResult Function(String text)? search,
    TResult Function()? refresh,
    TResult Function(Section? selectedSection)? sectionSelected,
    TResult Function(ConnectivityResult connectivityResult)?
        onConnectivityChanged,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataRequested value) dataRequested,
    required TResult Function(_EventSearch value) search,
    required TResult Function(_EventRefresh value) refresh,
    required TResult Function(_EventSectionSelected value) sectionSelected,
    required TResult Function(_EventConnectivityChanged value)
        onConnectivityChanged,
  }) {
    return refresh(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_EventSearch value)? search,
    TResult? Function(_EventRefresh value)? refresh,
    TResult? Function(_EventSectionSelected value)? sectionSelected,
    TResult? Function(_EventConnectivityChanged value)? onConnectivityChanged,
  }) {
    return refresh?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_EventSearch value)? search,
    TResult Function(_EventRefresh value)? refresh,
    TResult Function(_EventSectionSelected value)? sectionSelected,
    TResult Function(_EventConnectivityChanged value)? onConnectivityChanged,
    required TResult orElse(),
  }) {
    if (refresh != null) {
      return refresh(this);
    }
    return orElse();
  }
}

abstract class _EventRefresh implements NewsListEvent {
  const factory _EventRefresh() = _$_EventRefresh;
}

/// @nodoc
abstract class _$$_EventSectionSelectedCopyWith<$Res> {
  factory _$$_EventSectionSelectedCopyWith(_$_EventSectionSelected value,
          $Res Function(_$_EventSectionSelected) then) =
      __$$_EventSectionSelectedCopyWithImpl<$Res>;
  @useResult
  $Res call({Section? selectedSection});
}

/// @nodoc
class __$$_EventSectionSelectedCopyWithImpl<$Res>
    extends _$NewsListEventCopyWithImpl<$Res, _$_EventSectionSelected>
    implements _$$_EventSectionSelectedCopyWith<$Res> {
  __$$_EventSectionSelectedCopyWithImpl(_$_EventSectionSelected _value,
      $Res Function(_$_EventSectionSelected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedSection = freezed,
  }) {
    return _then(_$_EventSectionSelected(
      selectedSection: freezed == selectedSection
          ? _value.selectedSection
          : selectedSection // ignore: cast_nullable_to_non_nullable
              as Section?,
    ));
  }
}

/// @nodoc

class _$_EventSectionSelected implements _EventSectionSelected {
  const _$_EventSectionSelected({this.selectedSection});

  @override
  final Section? selectedSection;

  @override
  String toString() {
    return 'NewsListEvent.sectionSelected(selectedSection: $selectedSection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventSectionSelected &&
            (identical(other.selectedSection, selectedSection) ||
                other.selectedSection == selectedSection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedSection);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventSectionSelectedCopyWith<_$_EventSectionSelected> get copyWith =>
      __$$_EventSectionSelectedCopyWithImpl<_$_EventSectionSelected>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page) dataRequested,
    required TResult Function(String text) search,
    required TResult Function() refresh,
    required TResult Function(Section? selectedSection) sectionSelected,
    required TResult Function(ConnectivityResult connectivityResult)
        onConnectivityChanged,
  }) {
    return sectionSelected(selectedSection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? page)? dataRequested,
    TResult? Function(String text)? search,
    TResult? Function()? refresh,
    TResult? Function(Section? selectedSection)? sectionSelected,
    TResult? Function(ConnectivityResult connectivityResult)?
        onConnectivityChanged,
  }) {
    return sectionSelected?.call(selectedSection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page)? dataRequested,
    TResult Function(String text)? search,
    TResult Function()? refresh,
    TResult Function(Section? selectedSection)? sectionSelected,
    TResult Function(ConnectivityResult connectivityResult)?
        onConnectivityChanged,
    required TResult orElse(),
  }) {
    if (sectionSelected != null) {
      return sectionSelected(selectedSection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataRequested value) dataRequested,
    required TResult Function(_EventSearch value) search,
    required TResult Function(_EventRefresh value) refresh,
    required TResult Function(_EventSectionSelected value) sectionSelected,
    required TResult Function(_EventConnectivityChanged value)
        onConnectivityChanged,
  }) {
    return sectionSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_EventSearch value)? search,
    TResult? Function(_EventRefresh value)? refresh,
    TResult? Function(_EventSectionSelected value)? sectionSelected,
    TResult? Function(_EventConnectivityChanged value)? onConnectivityChanged,
  }) {
    return sectionSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_EventSearch value)? search,
    TResult Function(_EventRefresh value)? refresh,
    TResult Function(_EventSectionSelected value)? sectionSelected,
    TResult Function(_EventConnectivityChanged value)? onConnectivityChanged,
    required TResult orElse(),
  }) {
    if (sectionSelected != null) {
      return sectionSelected(this);
    }
    return orElse();
  }
}

abstract class _EventSectionSelected implements NewsListEvent {
  const factory _EventSectionSelected({final Section? selectedSection}) =
      _$_EventSectionSelected;

  Section? get selectedSection;
  @JsonKey(ignore: true)
  _$$_EventSectionSelectedCopyWith<_$_EventSectionSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventConnectivityChangedCopyWith<$Res> {
  factory _$$_EventConnectivityChangedCopyWith(
          _$_EventConnectivityChanged value,
          $Res Function(_$_EventConnectivityChanged) then) =
      __$$_EventConnectivityChangedCopyWithImpl<$Res>;
  @useResult
  $Res call({ConnectivityResult connectivityResult});
}

/// @nodoc
class __$$_EventConnectivityChangedCopyWithImpl<$Res>
    extends _$NewsListEventCopyWithImpl<$Res, _$_EventConnectivityChanged>
    implements _$$_EventConnectivityChangedCopyWith<$Res> {
  __$$_EventConnectivityChangedCopyWithImpl(_$_EventConnectivityChanged _value,
      $Res Function(_$_EventConnectivityChanged) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? connectivityResult = null,
  }) {
    return _then(_$_EventConnectivityChanged(
      connectivityResult: null == connectivityResult
          ? _value.connectivityResult
          : connectivityResult // ignore: cast_nullable_to_non_nullable
              as ConnectivityResult,
    ));
  }
}

/// @nodoc

class _$_EventConnectivityChanged implements _EventConnectivityChanged {
  const _$_EventConnectivityChanged({required this.connectivityResult});

  @override
  final ConnectivityResult connectivityResult;

  @override
  String toString() {
    return 'NewsListEvent.onConnectivityChanged(connectivityResult: $connectivityResult)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventConnectivityChanged &&
            (identical(other.connectivityResult, connectivityResult) ||
                other.connectivityResult == connectivityResult));
  }

  @override
  int get hashCode => Object.hash(runtimeType, connectivityResult);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventConnectivityChangedCopyWith<_$_EventConnectivityChanged>
      get copyWith => __$$_EventConnectivityChangedCopyWithImpl<
          _$_EventConnectivityChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int? page) dataRequested,
    required TResult Function(String text) search,
    required TResult Function() refresh,
    required TResult Function(Section? selectedSection) sectionSelected,
    required TResult Function(ConnectivityResult connectivityResult)
        onConnectivityChanged,
  }) {
    return onConnectivityChanged(connectivityResult);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int? page)? dataRequested,
    TResult? Function(String text)? search,
    TResult? Function()? refresh,
    TResult? Function(Section? selectedSection)? sectionSelected,
    TResult? Function(ConnectivityResult connectivityResult)?
        onConnectivityChanged,
  }) {
    return onConnectivityChanged?.call(connectivityResult);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int? page)? dataRequested,
    TResult Function(String text)? search,
    TResult Function()? refresh,
    TResult Function(Section? selectedSection)? sectionSelected,
    TResult Function(ConnectivityResult connectivityResult)?
        onConnectivityChanged,
    required TResult orElse(),
  }) {
    if (onConnectivityChanged != null) {
      return onConnectivityChanged(connectivityResult);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventDataRequested value) dataRequested,
    required TResult Function(_EventSearch value) search,
    required TResult Function(_EventRefresh value) refresh,
    required TResult Function(_EventSectionSelected value) sectionSelected,
    required TResult Function(_EventConnectivityChanged value)
        onConnectivityChanged,
  }) {
    return onConnectivityChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventDataRequested value)? dataRequested,
    TResult? Function(_EventSearch value)? search,
    TResult? Function(_EventRefresh value)? refresh,
    TResult? Function(_EventSectionSelected value)? sectionSelected,
    TResult? Function(_EventConnectivityChanged value)? onConnectivityChanged,
  }) {
    return onConnectivityChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventDataRequested value)? dataRequested,
    TResult Function(_EventSearch value)? search,
    TResult Function(_EventRefresh value)? refresh,
    TResult Function(_EventSectionSelected value)? sectionSelected,
    TResult Function(_EventConnectivityChanged value)? onConnectivityChanged,
    required TResult orElse(),
  }) {
    if (onConnectivityChanged != null) {
      return onConnectivityChanged(this);
    }
    return orElse();
  }
}

abstract class _EventConnectivityChanged implements NewsListEvent {
  const factory _EventConnectivityChanged(
          {required final ConnectivityResult connectivityResult}) =
      _$_EventConnectivityChanged;

  ConnectivityResult get connectivityResult;
  @JsonKey(ignore: true)
  _$$_EventConnectivityChangedCopyWith<_$_EventConnectivityChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NewsListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            List<Article> articles, Section? selectedSection, bool isConnected)
        dataReceived,
    required TResult Function(String? errorText) error,
    required TResult Function(List<Article> articles) searchResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            List<Article> articles, Section? selectedSection, bool isConnected)?
        dataReceived,
    TResult? Function(String? errorText)? error,
    TResult? Function(List<Article> articles)? searchResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            List<Article> articles, Section? selectedSection, bool isConnected)?
        dataReceived,
    TResult Function(String? errorText)? error,
    TResult Function(List<Article> articles)? searchResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_StateDataReceived value) dataReceived,
    required TResult Function(_StateError value) error,
    required TResult Function(_StateSearchResult value) searchResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateDataReceived value)? dataReceived,
    TResult? Function(_StateError value)? error,
    TResult? Function(_StateSearchResult value)? searchResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateDataReceived value)? dataReceived,
    TResult Function(_StateError value)? error,
    TResult Function(_StateSearchResult value)? searchResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewsListStateCopyWith<$Res> {
  factory $NewsListStateCopyWith(
          NewsListState value, $Res Function(NewsListState) then) =
      _$NewsListStateCopyWithImpl<$Res, NewsListState>;
}

/// @nodoc
class _$NewsListStateCopyWithImpl<$Res, $Val extends NewsListState>
    implements $NewsListStateCopyWith<$Res> {
  _$NewsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StatePendingCopyWith<$Res> {
  factory _$$_StatePendingCopyWith(
          _$_StatePending value, $Res Function(_$_StatePending) then) =
      __$$_StatePendingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StatePendingCopyWithImpl<$Res>
    extends _$NewsListStateCopyWithImpl<$Res, _$_StatePending>
    implements _$$_StatePendingCopyWith<$Res> {
  __$$_StatePendingCopyWithImpl(
      _$_StatePending _value, $Res Function(_$_StatePending) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_StatePending implements _StatePending {
  const _$_StatePending();

  @override
  String toString() {
    return 'NewsListState.pending()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StatePending);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            List<Article> articles, Section? selectedSection, bool isConnected)
        dataReceived,
    required TResult Function(String? errorText) error,
    required TResult Function(List<Article> articles) searchResult,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            List<Article> articles, Section? selectedSection, bool isConnected)?
        dataReceived,
    TResult? Function(String? errorText)? error,
    TResult? Function(List<Article> articles)? searchResult,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            List<Article> articles, Section? selectedSection, bool isConnected)?
        dataReceived,
    TResult Function(String? errorText)? error,
    TResult Function(List<Article> articles)? searchResult,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_StateDataReceived value) dataReceived,
    required TResult Function(_StateError value) error,
    required TResult Function(_StateSearchResult value) searchResult,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateDataReceived value)? dataReceived,
    TResult? Function(_StateError value)? error,
    TResult? Function(_StateSearchResult value)? searchResult,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateDataReceived value)? dataReceived,
    TResult Function(_StateError value)? error,
    TResult Function(_StateSearchResult value)? searchResult,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _StatePending implements NewsListState {
  const factory _StatePending() = _$_StatePending;
}

/// @nodoc
abstract class _$$_StateDataReceivedCopyWith<$Res> {
  factory _$$_StateDataReceivedCopyWith(_$_StateDataReceived value,
          $Res Function(_$_StateDataReceived) then) =
      __$$_StateDataReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Article> articles, Section? selectedSection, bool isConnected});
}

/// @nodoc
class __$$_StateDataReceivedCopyWithImpl<$Res>
    extends _$NewsListStateCopyWithImpl<$Res, _$_StateDataReceived>
    implements _$$_StateDataReceivedCopyWith<$Res> {
  __$$_StateDataReceivedCopyWithImpl(
      _$_StateDataReceived _value, $Res Function(_$_StateDataReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
    Object? selectedSection = freezed,
    Object? isConnected = null,
  }) {
    return _then(_$_StateDataReceived(
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
      selectedSection: freezed == selectedSection
          ? _value.selectedSection
          : selectedSection // ignore: cast_nullable_to_non_nullable
              as Section?,
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_StateDataReceived implements _StateDataReceived {
  const _$_StateDataReceived(
      {required final List<Article> articles,
      this.selectedSection,
      required this.isConnected})
      : _articles = articles;

  final List<Article> _articles;
  @override
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  final Section? selectedSection;
  @override
  final bool isConnected;

  @override
  String toString() {
    return 'NewsListState.dataReceived(articles: $articles, selectedSection: $selectedSection, isConnected: $isConnected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateDataReceived &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.selectedSection, selectedSection) ||
                other.selectedSection == selectedSection) &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_articles),
      selectedSection,
      isConnected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateDataReceivedCopyWith<_$_StateDataReceived> get copyWith =>
      __$$_StateDataReceivedCopyWithImpl<_$_StateDataReceived>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            List<Article> articles, Section? selectedSection, bool isConnected)
        dataReceived,
    required TResult Function(String? errorText) error,
    required TResult Function(List<Article> articles) searchResult,
  }) {
    return dataReceived(articles, selectedSection, isConnected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            List<Article> articles, Section? selectedSection, bool isConnected)?
        dataReceived,
    TResult? Function(String? errorText)? error,
    TResult? Function(List<Article> articles)? searchResult,
  }) {
    return dataReceived?.call(articles, selectedSection, isConnected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            List<Article> articles, Section? selectedSection, bool isConnected)?
        dataReceived,
    TResult Function(String? errorText)? error,
    TResult Function(List<Article> articles)? searchResult,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(articles, selectedSection, isConnected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_StateDataReceived value) dataReceived,
    required TResult Function(_StateError value) error,
    required TResult Function(_StateSearchResult value) searchResult,
  }) {
    return dataReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateDataReceived value)? dataReceived,
    TResult? Function(_StateError value)? error,
    TResult? Function(_StateSearchResult value)? searchResult,
  }) {
    return dataReceived?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateDataReceived value)? dataReceived,
    TResult Function(_StateError value)? error,
    TResult Function(_StateSearchResult value)? searchResult,
    required TResult orElse(),
  }) {
    if (dataReceived != null) {
      return dataReceived(this);
    }
    return orElse();
  }
}

abstract class _StateDataReceived implements NewsListState {
  const factory _StateDataReceived(
      {required final List<Article> articles,
      final Section? selectedSection,
      required final bool isConnected}) = _$_StateDataReceived;

  List<Article> get articles;
  Section? get selectedSection;
  bool get isConnected;
  @JsonKey(ignore: true)
  _$$_StateDataReceivedCopyWith<_$_StateDataReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StateErrorCopyWith<$Res> {
  factory _$$_StateErrorCopyWith(
          _$_StateError value, $Res Function(_$_StateError) then) =
      __$$_StateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String? errorText});
}

/// @nodoc
class __$$_StateErrorCopyWithImpl<$Res>
    extends _$NewsListStateCopyWithImpl<$Res, _$_StateError>
    implements _$$_StateErrorCopyWith<$Res> {
  __$$_StateErrorCopyWithImpl(
      _$_StateError _value, $Res Function(_$_StateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorText = freezed,
  }) {
    return _then(_$_StateError(
      errorText: freezed == errorText
          ? _value.errorText
          : errorText // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_StateError implements _StateError {
  const _$_StateError({this.errorText});

  @override
  final String? errorText;

  @override
  String toString() {
    return 'NewsListState.error(errorText: $errorText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateError &&
            (identical(other.errorText, errorText) ||
                other.errorText == errorText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateErrorCopyWith<_$_StateError> get copyWith =>
      __$$_StateErrorCopyWithImpl<_$_StateError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            List<Article> articles, Section? selectedSection, bool isConnected)
        dataReceived,
    required TResult Function(String? errorText) error,
    required TResult Function(List<Article> articles) searchResult,
  }) {
    return error(errorText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            List<Article> articles, Section? selectedSection, bool isConnected)?
        dataReceived,
    TResult? Function(String? errorText)? error,
    TResult? Function(List<Article> articles)? searchResult,
  }) {
    return error?.call(errorText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            List<Article> articles, Section? selectedSection, bool isConnected)?
        dataReceived,
    TResult Function(String? errorText)? error,
    TResult Function(List<Article> articles)? searchResult,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_StateDataReceived value) dataReceived,
    required TResult Function(_StateError value) error,
    required TResult Function(_StateSearchResult value) searchResult,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateDataReceived value)? dataReceived,
    TResult? Function(_StateError value)? error,
    TResult? Function(_StateSearchResult value)? searchResult,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateDataReceived value)? dataReceived,
    TResult Function(_StateError value)? error,
    TResult Function(_StateSearchResult value)? searchResult,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _StateError implements NewsListState {
  const factory _StateError({final String? errorText}) = _$_StateError;

  String? get errorText;
  @JsonKey(ignore: true)
  _$$_StateErrorCopyWith<_$_StateError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StateSearchResultCopyWith<$Res> {
  factory _$$_StateSearchResultCopyWith(_$_StateSearchResult value,
          $Res Function(_$_StateSearchResult) then) =
      __$$_StateSearchResultCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Article> articles});
}

/// @nodoc
class __$$_StateSearchResultCopyWithImpl<$Res>
    extends _$NewsListStateCopyWithImpl<$Res, _$_StateSearchResult>
    implements _$$_StateSearchResultCopyWith<$Res> {
  __$$_StateSearchResultCopyWithImpl(
      _$_StateSearchResult _value, $Res Function(_$_StateSearchResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articles = null,
  }) {
    return _then(_$_StateSearchResult(
      articles: null == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$_StateSearchResult implements _StateSearchResult {
  const _$_StateSearchResult({required final List<Article> articles})
      : _articles = articles;

  final List<Article> _articles;
  @override
  List<Article> get articles {
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_articles);
  }

  @override
  String toString() {
    return 'NewsListState.searchResult(articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateSearchResult &&
            const DeepCollectionEquality().equals(other._articles, _articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_articles));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateSearchResultCopyWith<_$_StateSearchResult> get copyWith =>
      __$$_StateSearchResultCopyWithImpl<_$_StateSearchResult>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(
            List<Article> articles, Section? selectedSection, bool isConnected)
        dataReceived,
    required TResult Function(String? errorText) error,
    required TResult Function(List<Article> articles) searchResult,
  }) {
    return searchResult(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(
            List<Article> articles, Section? selectedSection, bool isConnected)?
        dataReceived,
    TResult? Function(String? errorText)? error,
    TResult? Function(List<Article> articles)? searchResult,
  }) {
    return searchResult?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(
            List<Article> articles, Section? selectedSection, bool isConnected)?
        dataReceived,
    TResult Function(String? errorText)? error,
    TResult Function(List<Article> articles)? searchResult,
    required TResult orElse(),
  }) {
    if (searchResult != null) {
      return searchResult(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_StateDataReceived value) dataReceived,
    required TResult Function(_StateError value) error,
    required TResult Function(_StateSearchResult value) searchResult,
  }) {
    return searchResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateDataReceived value)? dataReceived,
    TResult? Function(_StateError value)? error,
    TResult? Function(_StateSearchResult value)? searchResult,
  }) {
    return searchResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateDataReceived value)? dataReceived,
    TResult Function(_StateError value)? error,
    TResult Function(_StateSearchResult value)? searchResult,
    required TResult orElse(),
  }) {
    if (searchResult != null) {
      return searchResult(this);
    }
    return orElse();
  }
}

abstract class _StateSearchResult implements NewsListState {
  const factory _StateSearchResult({required final List<Article> articles}) =
      _$_StateSearchResult;

  List<Article> get articles;
  @JsonKey(ignore: true)
  _$$_StateSearchResultCopyWith<_$_StateSearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}
