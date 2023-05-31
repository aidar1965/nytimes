// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'favorites_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FavoritesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Section section) sectionSelectedOrUnselected,
    required TResult Function() initialDataRequested,
    required TResult Function() onFavoritesListChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Section section)? sectionSelectedOrUnselected,
    TResult? Function()? initialDataRequested,
    TResult? Function()? onFavoritesListChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Section section)? sectionSelectedOrUnselected,
    TResult Function()? initialDataRequested,
    TResult Function()? onFavoritesListChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventSectionSelectedOrUnselected value)
        sectionSelectedOrUnselected,
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventOnFavoritesListChanged value)
        onFavoritesListChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventSectionSelectedOrUnselected value)?
        sectionSelectedOrUnselected,
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventOnFavoritesListChanged value)?
        onFavoritesListChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventSectionSelectedOrUnselected value)?
        sectionSelectedOrUnselected,
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventOnFavoritesListChanged value)?
        onFavoritesListChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesEventCopyWith<$Res> {
  factory $FavoritesEventCopyWith(
          FavoritesEvent value, $Res Function(FavoritesEvent) then) =
      _$FavoritesEventCopyWithImpl<$Res, FavoritesEvent>;
}

/// @nodoc
class _$FavoritesEventCopyWithImpl<$Res, $Val extends FavoritesEvent>
    implements $FavoritesEventCopyWith<$Res> {
  _$FavoritesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_EventSectionSelectedOrUnselectedCopyWith<$Res> {
  factory _$$_EventSectionSelectedOrUnselectedCopyWith(
          _$_EventSectionSelectedOrUnselected value,
          $Res Function(_$_EventSectionSelectedOrUnselected) then) =
      __$$_EventSectionSelectedOrUnselectedCopyWithImpl<$Res>;
  @useResult
  $Res call({Section section});
}

/// @nodoc
class __$$_EventSectionSelectedOrUnselectedCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res,
        _$_EventSectionSelectedOrUnselected>
    implements _$$_EventSectionSelectedOrUnselectedCopyWith<$Res> {
  __$$_EventSectionSelectedOrUnselectedCopyWithImpl(
      _$_EventSectionSelectedOrUnselected _value,
      $Res Function(_$_EventSectionSelectedOrUnselected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section = freezed,
  }) {
    return _then(_$_EventSectionSelectedOrUnselected(
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as Section,
    ));
  }
}

/// @nodoc

class _$_EventSectionSelectedOrUnselected
    implements _EventSectionSelectedOrUnselected {
  const _$_EventSectionSelectedOrUnselected({required this.section});

  @override
  final Section section;

  @override
  String toString() {
    return 'FavoritesEvent.sectionSelectedOrUnselected(section: $section)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventSectionSelectedOrUnselected &&
            const DeepCollectionEquality().equals(other.section, section));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(section));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EventSectionSelectedOrUnselectedCopyWith<
          _$_EventSectionSelectedOrUnselected>
      get copyWith => __$$_EventSectionSelectedOrUnselectedCopyWithImpl<
          _$_EventSectionSelectedOrUnselected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Section section) sectionSelectedOrUnselected,
    required TResult Function() initialDataRequested,
    required TResult Function() onFavoritesListChanged,
  }) {
    return sectionSelectedOrUnselected(section);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Section section)? sectionSelectedOrUnselected,
    TResult? Function()? initialDataRequested,
    TResult? Function()? onFavoritesListChanged,
  }) {
    return sectionSelectedOrUnselected?.call(section);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Section section)? sectionSelectedOrUnselected,
    TResult Function()? initialDataRequested,
    TResult Function()? onFavoritesListChanged,
    required TResult orElse(),
  }) {
    if (sectionSelectedOrUnselected != null) {
      return sectionSelectedOrUnselected(section);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventSectionSelectedOrUnselected value)
        sectionSelectedOrUnselected,
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventOnFavoritesListChanged value)
        onFavoritesListChanged,
  }) {
    return sectionSelectedOrUnselected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventSectionSelectedOrUnselected value)?
        sectionSelectedOrUnselected,
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventOnFavoritesListChanged value)?
        onFavoritesListChanged,
  }) {
    return sectionSelectedOrUnselected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventSectionSelectedOrUnselected value)?
        sectionSelectedOrUnselected,
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventOnFavoritesListChanged value)?
        onFavoritesListChanged,
    required TResult orElse(),
  }) {
    if (sectionSelectedOrUnselected != null) {
      return sectionSelectedOrUnselected(this);
    }
    return orElse();
  }
}

abstract class _EventSectionSelectedOrUnselected implements FavoritesEvent {
  const factory _EventSectionSelectedOrUnselected(
      {required final Section section}) = _$_EventSectionSelectedOrUnselected;

  Section get section;
  @JsonKey(ignore: true)
  _$$_EventSectionSelectedOrUnselectedCopyWith<
          _$_EventSectionSelectedOrUnselected>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_EventInitialDataRequestedCopyWith<$Res> {
  factory _$$_EventInitialDataRequestedCopyWith(
          _$_EventInitialDataRequested value,
          $Res Function(_$_EventInitialDataRequested) then) =
      __$$_EventInitialDataRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventInitialDataRequestedCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$_EventInitialDataRequested>
    implements _$$_EventInitialDataRequestedCopyWith<$Res> {
  __$$_EventInitialDataRequestedCopyWithImpl(
      _$_EventInitialDataRequested _value,
      $Res Function(_$_EventInitialDataRequested) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventInitialDataRequested implements _EventInitialDataRequested {
  const _$_EventInitialDataRequested();

  @override
  String toString() {
    return 'FavoritesEvent.initialDataRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventInitialDataRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Section section) sectionSelectedOrUnselected,
    required TResult Function() initialDataRequested,
    required TResult Function() onFavoritesListChanged,
  }) {
    return initialDataRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Section section)? sectionSelectedOrUnselected,
    TResult? Function()? initialDataRequested,
    TResult? Function()? onFavoritesListChanged,
  }) {
    return initialDataRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Section section)? sectionSelectedOrUnselected,
    TResult Function()? initialDataRequested,
    TResult Function()? onFavoritesListChanged,
    required TResult orElse(),
  }) {
    if (initialDataRequested != null) {
      return initialDataRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventSectionSelectedOrUnselected value)
        sectionSelectedOrUnselected,
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventOnFavoritesListChanged value)
        onFavoritesListChanged,
  }) {
    return initialDataRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventSectionSelectedOrUnselected value)?
        sectionSelectedOrUnselected,
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventOnFavoritesListChanged value)?
        onFavoritesListChanged,
  }) {
    return initialDataRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventSectionSelectedOrUnselected value)?
        sectionSelectedOrUnselected,
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventOnFavoritesListChanged value)?
        onFavoritesListChanged,
    required TResult orElse(),
  }) {
    if (initialDataRequested != null) {
      return initialDataRequested(this);
    }
    return orElse();
  }
}

abstract class _EventInitialDataRequested implements FavoritesEvent {
  const factory _EventInitialDataRequested() = _$_EventInitialDataRequested;
}

/// @nodoc
abstract class _$$_EventOnFavoritesListChangedCopyWith<$Res> {
  factory _$$_EventOnFavoritesListChangedCopyWith(
          _$_EventOnFavoritesListChanged value,
          $Res Function(_$_EventOnFavoritesListChanged) then) =
      __$$_EventOnFavoritesListChangedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EventOnFavoritesListChangedCopyWithImpl<$Res>
    extends _$FavoritesEventCopyWithImpl<$Res, _$_EventOnFavoritesListChanged>
    implements _$$_EventOnFavoritesListChangedCopyWith<$Res> {
  __$$_EventOnFavoritesListChangedCopyWithImpl(
      _$_EventOnFavoritesListChanged _value,
      $Res Function(_$_EventOnFavoritesListChanged) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EventOnFavoritesListChanged implements _EventOnFavoritesListChanged {
  const _$_EventOnFavoritesListChanged();

  @override
  String toString() {
    return 'FavoritesEvent.onFavoritesListChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventOnFavoritesListChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Section section) sectionSelectedOrUnselected,
    required TResult Function() initialDataRequested,
    required TResult Function() onFavoritesListChanged,
  }) {
    return onFavoritesListChanged();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Section section)? sectionSelectedOrUnselected,
    TResult? Function()? initialDataRequested,
    TResult? Function()? onFavoritesListChanged,
  }) {
    return onFavoritesListChanged?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Section section)? sectionSelectedOrUnselected,
    TResult Function()? initialDataRequested,
    TResult Function()? onFavoritesListChanged,
    required TResult orElse(),
  }) {
    if (onFavoritesListChanged != null) {
      return onFavoritesListChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EventSectionSelectedOrUnselected value)
        sectionSelectedOrUnselected,
    required TResult Function(_EventInitialDataRequested value)
        initialDataRequested,
    required TResult Function(_EventOnFavoritesListChanged value)
        onFavoritesListChanged,
  }) {
    return onFavoritesListChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_EventSectionSelectedOrUnselected value)?
        sectionSelectedOrUnselected,
    TResult? Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult? Function(_EventOnFavoritesListChanged value)?
        onFavoritesListChanged,
  }) {
    return onFavoritesListChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EventSectionSelectedOrUnselected value)?
        sectionSelectedOrUnselected,
    TResult Function(_EventInitialDataRequested value)? initialDataRequested,
    TResult Function(_EventOnFavoritesListChanged value)?
        onFavoritesListChanged,
    required TResult orElse(),
  }) {
    if (onFavoritesListChanged != null) {
      return onFavoritesListChanged(this);
    }
    return orElse();
  }
}

abstract class _EventOnFavoritesListChanged implements FavoritesEvent {
  const factory _EventOnFavoritesListChanged() = _$_EventOnFavoritesListChanged;
}

/// @nodoc
mixin _$FavoritesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(List<Favorite> favorites, bool isPending) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Favorite> favorites, bool isPending)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Favorite> favorites, bool isPending)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_StateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoritesStateCopyWith<$Res> {
  factory $FavoritesStateCopyWith(
          FavoritesState value, $Res Function(FavoritesState) then) =
      _$FavoritesStateCopyWithImpl<$Res, FavoritesState>;
}

/// @nodoc
class _$FavoritesStateCopyWithImpl<$Res, $Val extends FavoritesState>
    implements $FavoritesStateCopyWith<$Res> {
  _$FavoritesStateCopyWithImpl(this._value, this._then);

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
    extends _$FavoritesStateCopyWithImpl<$Res, _$_StatePending>
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
    return 'FavoritesState.pending()';
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
    required TResult Function(List<Favorite> favorites, bool isPending) data,
  }) {
    return pending();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Favorite> favorites, bool isPending)? data,
  }) {
    return pending?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Favorite> favorites, bool isPending)? data,
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
    required TResult Function(_StateData value) data,
  }) {
    return pending(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateData value)? data,
  }) {
    return pending?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateData value)? data,
    required TResult orElse(),
  }) {
    if (pending != null) {
      return pending(this);
    }
    return orElse();
  }
}

abstract class _StatePending implements FavoritesState {
  const factory _StatePending() = _$_StatePending;
}

/// @nodoc
abstract class _$$_StateDataCopyWith<$Res> {
  factory _$$_StateDataCopyWith(
          _$_StateData value, $Res Function(_$_StateData) then) =
      __$$_StateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Favorite> favorites, bool isPending});
}

/// @nodoc
class __$$_StateDataCopyWithImpl<$Res>
    extends _$FavoritesStateCopyWithImpl<$Res, _$_StateData>
    implements _$$_StateDataCopyWith<$Res> {
  __$$_StateDataCopyWithImpl(
      _$_StateData _value, $Res Function(_$_StateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? favorites = null,
    Object? isPending = null,
  }) {
    return _then(_$_StateData(
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<Favorite>,
      isPending: null == isPending
          ? _value.isPending
          : isPending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_StateData implements _StateData {
  const _$_StateData(
      {required final List<Favorite> favorites, this.isPending = false})
      : _favorites = favorites;

  final List<Favorite> _favorites;
  @override
  List<Favorite> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  @JsonKey()
  final bool isPending;

  @override
  String toString() {
    return 'FavoritesState.data(favorites: $favorites, isPending: $isPending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateData &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            (identical(other.isPending, isPending) ||
                other.isPending == isPending));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_favorites), isPending);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateDataCopyWith<_$_StateData> get copyWith =>
      __$$_StateDataCopyWithImpl<_$_StateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() pending,
    required TResult Function(List<Favorite> favorites, bool isPending) data,
  }) {
    return data(favorites, isPending);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? pending,
    TResult? Function(List<Favorite> favorites, bool isPending)? data,
  }) {
    return data?.call(favorites, isPending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? pending,
    TResult Function(List<Favorite> favorites, bool isPending)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(favorites, isPending);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StatePending value) pending,
    required TResult Function(_StateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StatePending value)? pending,
    TResult? Function(_StateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StatePending value)? pending,
    TResult Function(_StateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _StateData implements FavoritesState {
  const factory _StateData(
      {required final List<Favorite> favorites,
      final bool isPending}) = _$_StateData;

  List<Favorite> get favorites;
  bool get isPending;
  @JsonKey(ignore: true)
  _$$_StateDataCopyWith<_$_StateData> get copyWith =>
      throw _privateConstructorUsedError;
}
