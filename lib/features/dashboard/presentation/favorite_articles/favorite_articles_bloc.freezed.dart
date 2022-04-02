// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'favorite_articles_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FavoriteArticlesEventTearOff {
  const _$FavoriteArticlesEventTearOff();

  _GetAllFavorites getAllFavorites() {
    return const _GetAllFavorites();
  }

  _AddToFavorites addToFavorites({required Article article}) {
    return _AddToFavorites(
      article: article,
    );
  }

  _RemoveFromFavorites removeFromFavories({required Article article}) {
    return _RemoveFromFavorites(
      article: article,
    );
  }

  _RemoveAll removeAll() {
    return const _RemoveAll();
  }
}

/// @nodoc
const $FavoriteArticlesEvent = _$FavoriteArticlesEventTearOff();

/// @nodoc
mixin _$FavoriteArticlesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllFavorites,
    required TResult Function(Article article) addToFavorites,
    required TResult Function(Article article) removeFromFavories,
    required TResult Function() removeAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllFavorites,
    TResult Function(Article article)? addToFavorites,
    TResult Function(Article article)? removeFromFavories,
    TResult Function()? removeAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllFavorites,
    TResult Function(Article article)? addToFavorites,
    TResult Function(Article article)? removeFromFavories,
    TResult Function()? removeAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllFavorites value) getAllFavorites,
    required TResult Function(_AddToFavorites value) addToFavorites,
    required TResult Function(_RemoveFromFavorites value) removeFromFavories,
    required TResult Function(_RemoveAll value) removeAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllFavorites value)? getAllFavorites,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_RemoveFromFavorites value)? removeFromFavories,
    TResult Function(_RemoveAll value)? removeAll,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllFavorites value)? getAllFavorites,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_RemoveFromFavorites value)? removeFromFavories,
    TResult Function(_RemoveAll value)? removeAll,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteArticlesEventCopyWith<$Res> {
  factory $FavoriteArticlesEventCopyWith(FavoriteArticlesEvent value,
          $Res Function(FavoriteArticlesEvent) then) =
      _$FavoriteArticlesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteArticlesEventCopyWithImpl<$Res>
    implements $FavoriteArticlesEventCopyWith<$Res> {
  _$FavoriteArticlesEventCopyWithImpl(this._value, this._then);

  final FavoriteArticlesEvent _value;
  // ignore: unused_field
  final $Res Function(FavoriteArticlesEvent) _then;
}

/// @nodoc
abstract class _$GetAllFavoritesCopyWith<$Res> {
  factory _$GetAllFavoritesCopyWith(
          _GetAllFavorites value, $Res Function(_GetAllFavorites) then) =
      __$GetAllFavoritesCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetAllFavoritesCopyWithImpl<$Res>
    extends _$FavoriteArticlesEventCopyWithImpl<$Res>
    implements _$GetAllFavoritesCopyWith<$Res> {
  __$GetAllFavoritesCopyWithImpl(
      _GetAllFavorites _value, $Res Function(_GetAllFavorites) _then)
      : super(_value, (v) => _then(v as _GetAllFavorites));

  @override
  _GetAllFavorites get _value => super._value as _GetAllFavorites;
}

/// @nodoc

class _$_GetAllFavorites implements _GetAllFavorites {
  const _$_GetAllFavorites();

  @override
  String toString() {
    return 'FavoriteArticlesEvent.getAllFavorites()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetAllFavorites);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllFavorites,
    required TResult Function(Article article) addToFavorites,
    required TResult Function(Article article) removeFromFavories,
    required TResult Function() removeAll,
  }) {
    return getAllFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllFavorites,
    TResult Function(Article article)? addToFavorites,
    TResult Function(Article article)? removeFromFavories,
    TResult Function()? removeAll,
  }) {
    return getAllFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllFavorites,
    TResult Function(Article article)? addToFavorites,
    TResult Function(Article article)? removeFromFavories,
    TResult Function()? removeAll,
    required TResult orElse(),
  }) {
    if (getAllFavorites != null) {
      return getAllFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllFavorites value) getAllFavorites,
    required TResult Function(_AddToFavorites value) addToFavorites,
    required TResult Function(_RemoveFromFavorites value) removeFromFavories,
    required TResult Function(_RemoveAll value) removeAll,
  }) {
    return getAllFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllFavorites value)? getAllFavorites,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_RemoveFromFavorites value)? removeFromFavories,
    TResult Function(_RemoveAll value)? removeAll,
  }) {
    return getAllFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllFavorites value)? getAllFavorites,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_RemoveFromFavorites value)? removeFromFavories,
    TResult Function(_RemoveAll value)? removeAll,
    required TResult orElse(),
  }) {
    if (getAllFavorites != null) {
      return getAllFavorites(this);
    }
    return orElse();
  }
}

abstract class _GetAllFavorites implements FavoriteArticlesEvent {
  const factory _GetAllFavorites() = _$_GetAllFavorites;
}

/// @nodoc
abstract class _$AddToFavoritesCopyWith<$Res> {
  factory _$AddToFavoritesCopyWith(
          _AddToFavorites value, $Res Function(_AddToFavorites) then) =
      __$AddToFavoritesCopyWithImpl<$Res>;
  $Res call({Article article});
}

/// @nodoc
class __$AddToFavoritesCopyWithImpl<$Res>
    extends _$FavoriteArticlesEventCopyWithImpl<$Res>
    implements _$AddToFavoritesCopyWith<$Res> {
  __$AddToFavoritesCopyWithImpl(
      _AddToFavorites _value, $Res Function(_AddToFavorites) _then)
      : super(_value, (v) => _then(v as _AddToFavorites));

  @override
  _AddToFavorites get _value => super._value as _AddToFavorites;

  @override
  $Res call({
    Object? article = freezed,
  }) {
    return _then(_AddToFavorites(
      article: article == freezed
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as Article,
    ));
  }
}

/// @nodoc

class _$_AddToFavorites implements _AddToFavorites {
  const _$_AddToFavorites({required this.article});

  @override
  final Article article;

  @override
  String toString() {
    return 'FavoriteArticlesEvent.addToFavorites(article: $article)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AddToFavorites &&
            const DeepCollectionEquality().equals(other.article, article));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(article));

  @JsonKey(ignore: true)
  @override
  _$AddToFavoritesCopyWith<_AddToFavorites> get copyWith =>
      __$AddToFavoritesCopyWithImpl<_AddToFavorites>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllFavorites,
    required TResult Function(Article article) addToFavorites,
    required TResult Function(Article article) removeFromFavories,
    required TResult Function() removeAll,
  }) {
    return addToFavorites(article);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllFavorites,
    TResult Function(Article article)? addToFavorites,
    TResult Function(Article article)? removeFromFavories,
    TResult Function()? removeAll,
  }) {
    return addToFavorites?.call(article);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllFavorites,
    TResult Function(Article article)? addToFavorites,
    TResult Function(Article article)? removeFromFavories,
    TResult Function()? removeAll,
    required TResult orElse(),
  }) {
    if (addToFavorites != null) {
      return addToFavorites(article);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllFavorites value) getAllFavorites,
    required TResult Function(_AddToFavorites value) addToFavorites,
    required TResult Function(_RemoveFromFavorites value) removeFromFavories,
    required TResult Function(_RemoveAll value) removeAll,
  }) {
    return addToFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllFavorites value)? getAllFavorites,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_RemoveFromFavorites value)? removeFromFavories,
    TResult Function(_RemoveAll value)? removeAll,
  }) {
    return addToFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllFavorites value)? getAllFavorites,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_RemoveFromFavorites value)? removeFromFavories,
    TResult Function(_RemoveAll value)? removeAll,
    required TResult orElse(),
  }) {
    if (addToFavorites != null) {
      return addToFavorites(this);
    }
    return orElse();
  }
}

abstract class _AddToFavorites implements FavoriteArticlesEvent {
  const factory _AddToFavorites({required Article article}) = _$_AddToFavorites;

  Article get article;
  @JsonKey(ignore: true)
  _$AddToFavoritesCopyWith<_AddToFavorites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveFromFavoritesCopyWith<$Res> {
  factory _$RemoveFromFavoritesCopyWith(_RemoveFromFavorites value,
          $Res Function(_RemoveFromFavorites) then) =
      __$RemoveFromFavoritesCopyWithImpl<$Res>;
  $Res call({Article article});
}

/// @nodoc
class __$RemoveFromFavoritesCopyWithImpl<$Res>
    extends _$FavoriteArticlesEventCopyWithImpl<$Res>
    implements _$RemoveFromFavoritesCopyWith<$Res> {
  __$RemoveFromFavoritesCopyWithImpl(
      _RemoveFromFavorites _value, $Res Function(_RemoveFromFavorites) _then)
      : super(_value, (v) => _then(v as _RemoveFromFavorites));

  @override
  _RemoveFromFavorites get _value => super._value as _RemoveFromFavorites;

  @override
  $Res call({
    Object? article = freezed,
  }) {
    return _then(_RemoveFromFavorites(
      article: article == freezed
          ? _value.article
          : article // ignore: cast_nullable_to_non_nullable
              as Article,
    ));
  }
}

/// @nodoc

class _$_RemoveFromFavorites implements _RemoveFromFavorites {
  const _$_RemoveFromFavorites({required this.article});

  @override
  final Article article;

  @override
  String toString() {
    return 'FavoriteArticlesEvent.removeFromFavories(article: $article)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RemoveFromFavorites &&
            const DeepCollectionEquality().equals(other.article, article));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(article));

  @JsonKey(ignore: true)
  @override
  _$RemoveFromFavoritesCopyWith<_RemoveFromFavorites> get copyWith =>
      __$RemoveFromFavoritesCopyWithImpl<_RemoveFromFavorites>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllFavorites,
    required TResult Function(Article article) addToFavorites,
    required TResult Function(Article article) removeFromFavories,
    required TResult Function() removeAll,
  }) {
    return removeFromFavories(article);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllFavorites,
    TResult Function(Article article)? addToFavorites,
    TResult Function(Article article)? removeFromFavories,
    TResult Function()? removeAll,
  }) {
    return removeFromFavories?.call(article);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllFavorites,
    TResult Function(Article article)? addToFavorites,
    TResult Function(Article article)? removeFromFavories,
    TResult Function()? removeAll,
    required TResult orElse(),
  }) {
    if (removeFromFavories != null) {
      return removeFromFavories(article);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllFavorites value) getAllFavorites,
    required TResult Function(_AddToFavorites value) addToFavorites,
    required TResult Function(_RemoveFromFavorites value) removeFromFavories,
    required TResult Function(_RemoveAll value) removeAll,
  }) {
    return removeFromFavories(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllFavorites value)? getAllFavorites,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_RemoveFromFavorites value)? removeFromFavories,
    TResult Function(_RemoveAll value)? removeAll,
  }) {
    return removeFromFavories?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllFavorites value)? getAllFavorites,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_RemoveFromFavorites value)? removeFromFavories,
    TResult Function(_RemoveAll value)? removeAll,
    required TResult orElse(),
  }) {
    if (removeFromFavories != null) {
      return removeFromFavories(this);
    }
    return orElse();
  }
}

abstract class _RemoveFromFavorites implements FavoriteArticlesEvent {
  const factory _RemoveFromFavorites({required Article article}) =
      _$_RemoveFromFavorites;

  Article get article;
  @JsonKey(ignore: true)
  _$RemoveFromFavoritesCopyWith<_RemoveFromFavorites> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$RemoveAllCopyWith<$Res> {
  factory _$RemoveAllCopyWith(
          _RemoveAll value, $Res Function(_RemoveAll) then) =
      __$RemoveAllCopyWithImpl<$Res>;
}

/// @nodoc
class __$RemoveAllCopyWithImpl<$Res>
    extends _$FavoriteArticlesEventCopyWithImpl<$Res>
    implements _$RemoveAllCopyWith<$Res> {
  __$RemoveAllCopyWithImpl(_RemoveAll _value, $Res Function(_RemoveAll) _then)
      : super(_value, (v) => _then(v as _RemoveAll));

  @override
  _RemoveAll get _value => super._value as _RemoveAll;
}

/// @nodoc

class _$_RemoveAll implements _RemoveAll {
  const _$_RemoveAll();

  @override
  String toString() {
    return 'FavoriteArticlesEvent.removeAll()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _RemoveAll);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllFavorites,
    required TResult Function(Article article) addToFavorites,
    required TResult Function(Article article) removeFromFavories,
    required TResult Function() removeAll,
  }) {
    return removeAll();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getAllFavorites,
    TResult Function(Article article)? addToFavorites,
    TResult Function(Article article)? removeFromFavories,
    TResult Function()? removeAll,
  }) {
    return removeAll?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllFavorites,
    TResult Function(Article article)? addToFavorites,
    TResult Function(Article article)? removeFromFavories,
    TResult Function()? removeAll,
    required TResult orElse(),
  }) {
    if (removeAll != null) {
      return removeAll();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllFavorites value) getAllFavorites,
    required TResult Function(_AddToFavorites value) addToFavorites,
    required TResult Function(_RemoveFromFavorites value) removeFromFavories,
    required TResult Function(_RemoveAll value) removeAll,
  }) {
    return removeAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetAllFavorites value)? getAllFavorites,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_RemoveFromFavorites value)? removeFromFavories,
    TResult Function(_RemoveAll value)? removeAll,
  }) {
    return removeAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllFavorites value)? getAllFavorites,
    TResult Function(_AddToFavorites value)? addToFavorites,
    TResult Function(_RemoveFromFavorites value)? removeFromFavories,
    TResult Function(_RemoveAll value)? removeAll,
    required TResult orElse(),
  }) {
    if (removeAll != null) {
      return removeAll(this);
    }
    return orElse();
  }
}

abstract class _RemoveAll implements FavoriteArticlesEvent {
  const factory _RemoveAll() = _$_RemoveAll;
}

/// @nodoc
class _$FavoriteArticlesStateTearOff {
  const _$FavoriteArticlesStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Errror error({required String error}) {
    return _Errror(
      error: error,
    );
  }

  _Loaded loaded({required List<Article> articles}) {
    return _Loaded(
      articles: articles,
    );
  }
}

/// @nodoc
const $FavoriteArticlesState = _$FavoriteArticlesStateTearOff();

/// @nodoc
mixin _$FavoriteArticlesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) error,
    required TResult Function(List<Article> articles) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? error,
    TResult Function(List<Article> articles)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? error,
    TResult Function(List<Article> articles)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Errror value) error,
    required TResult Function(_Loaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Errror value)? error,
    TResult Function(_Loaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Errror value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FavoriteArticlesStateCopyWith<$Res> {
  factory $FavoriteArticlesStateCopyWith(FavoriteArticlesState value,
          $Res Function(FavoriteArticlesState) then) =
      _$FavoriteArticlesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$FavoriteArticlesStateCopyWithImpl<$Res>
    implements $FavoriteArticlesStateCopyWith<$Res> {
  _$FavoriteArticlesStateCopyWithImpl(this._value, this._then);

  final FavoriteArticlesState _value;
  // ignore: unused_field
  final $Res Function(FavoriteArticlesState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$FavoriteArticlesStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'FavoriteArticlesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) error,
    required TResult Function(List<Article> articles) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? error,
    TResult Function(List<Article> articles)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? error,
    TResult Function(List<Article> articles)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Errror value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Errror value)? error,
    TResult Function(_Loaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Errror value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements FavoriteArticlesState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ErrrorCopyWith<$Res> {
  factory _$ErrrorCopyWith(_Errror value, $Res Function(_Errror) then) =
      __$ErrrorCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$ErrrorCopyWithImpl<$Res>
    extends _$FavoriteArticlesStateCopyWithImpl<$Res>
    implements _$ErrrorCopyWith<$Res> {
  __$ErrrorCopyWithImpl(_Errror _value, $Res Function(_Errror) _then)
      : super(_value, (v) => _then(v as _Errror));

  @override
  _Errror get _value => super._value as _Errror;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Errror(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Errror implements _Errror {
  const _$_Errror({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'FavoriteArticlesState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Errror &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$ErrrorCopyWith<_Errror> get copyWith =>
      __$ErrrorCopyWithImpl<_Errror>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) error,
    required TResult Function(List<Article> articles) loaded,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? error,
    TResult Function(List<Article> articles)? loaded,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? error,
    TResult Function(List<Article> articles)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Errror value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Errror value)? error,
    TResult Function(_Loaded value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Errror value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Errror implements FavoriteArticlesState {
  const factory _Errror({required String error}) = _$_Errror;

  String get error;
  @JsonKey(ignore: true)
  _$ErrrorCopyWith<_Errror> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<Article> articles});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    extends _$FavoriteArticlesStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object? articles = freezed,
  }) {
    return _then(_Loaded(
      articles: articles == freezed
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>,
    ));
  }
}

/// @nodoc

class _$_Loaded implements _Loaded {
  const _$_Loaded({required this.articles});

  @override
  final List<Article> articles;

  @override
  String toString() {
    return 'FavoriteArticlesState.loaded(articles: $articles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Loaded &&
            const DeepCollectionEquality().equals(other.articles, articles));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(articles));

  @JsonKey(ignore: true)
  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String error) error,
    required TResult Function(List<Article> articles) loaded,
  }) {
    return loaded(articles);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? error,
    TResult Function(List<Article> articles)? loaded,
  }) {
    return loaded?.call(articles);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String error)? error,
    TResult Function(List<Article> articles)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(articles);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Errror value) error,
    required TResult Function(_Loaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Errror value)? error,
    TResult Function(_Loaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Errror value)? error,
    TResult Function(_Loaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements FavoriteArticlesState {
  const factory _Loaded({required List<Article> articles}) = _$_Loaded;

  List<Article> get articles;
  @JsonKey(ignore: true)
  _$LoadedCopyWith<_Loaded> get copyWith => throw _privateConstructorUsedError;
}
