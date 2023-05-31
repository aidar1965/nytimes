// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetFavoriteCollection on Isar {
  IsarCollection<Favorite> get favorites => this.collection();
}

const FavoriteSchema = CollectionSchema(
  name: r'Favorite',
  id: 5577971995748139032,
  properties: {
    r'section': PropertySchema(
      id: 0,
      name: r'section',
      type: IsarType.string,
      enumMap: _FavoritesectionEnumValueMap,
    )
  },
  estimateSize: _favoriteEstimateSize,
  serialize: _favoriteSerialize,
  deserialize: _favoriteDeserialize,
  deserializeProp: _favoriteDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _favoriteGetId,
  getLinks: _favoriteGetLinks,
  attach: _favoriteAttach,
  version: '3.1.0',
);

int _favoriteEstimateSize(
  Favorite object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.section.name.length * 3;
  return bytesCount;
}

void _favoriteSerialize(
  Favorite object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.section.name);
}

Favorite _favoriteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Favorite(
    section:
        _FavoritesectionValueEnumMap[reader.readStringOrNull(offsets[0])] ??
            Section.Arts,
  );
  object.id = id;
  return object;
}

P _favoriteDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (_FavoritesectionValueEnumMap[reader.readStringOrNull(offset)] ??
          Section.Arts) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _FavoritesectionEnumValueMap = {
  r'Arts': r'Arts',
  r'Automobiles': r'Automobiles',
  r'Autos': r'Autos',
  r'Blogs': r'Blogs',
  r'Books': r'Books',
  r'Booming': r'Booming',
  r'Business': r'Business',
  r'BusinessDay': r'BusinessDay',
  r'Corrections': r'Corrections',
  r'CrosswordsAndGames': r'CrosswordsAndGames',
  r'CrosswordsOrGames': r'CrosswordsOrGames',
  r'DiningAndWine': r'DiningAndWine',
  r'EditorsNotes': r'EditorsNotes',
  r'Education': r'Education',
  r'FashionAndStyle': r'FashionAndStyle',
  r'Food': r'Food',
  r'FrontPage': r'FrontPage',
  r'Giving': r'Giving',
  r'GlobalHome': r'GlobalHome',
  r'GreatHomesAndDestinations': r'GreatHomesAndDestinations',
  r'Health': r'Health',
  r'HomeAndGarden': r'HomeAndGarden',
  r'InternationalHome': r'InternationalHome',
  r'JobMarket': r'JobMarket',
  r'Learning': r'Learning',
  r'Magazine': r'Magazine',
  r'Movies': r'Movies',
  r'Multimedia': r'Multimedia',
  r'MultimediaOrPhotos': r'MultimediaOrPhotos',
  r'NYOrRegion': r'NYOrRegion',
  r'NYRegion': r'NYRegion',
  r'NYTNow': r'NYTNow',
  r'National': r'National',
  r'NewYork': r'NewYork',
  r'NewYorkAndRegion': r'NewYorkAndRegion',
  r'Obituaries': r'Obituaries',
  r'Olympics': r'Olympics',
  r'Open': r'Open',
  r'Opinion': r'Opinion',
  r'PaidDeathNotices': r'PaidDeathNotices',
  r'PublicEditor': r'PublicEditor',
  r'RealEstate': r'RealEstate',
  r'Science': r'Science',
  r'Sports': r'Sports',
  r'Style': r'Style',
  r'SundayMagazine': r'SundayMagazine',
  r'SundayReview': r'SundayReview',
  r'TMagazine': r'TMagazine',
  r'TStyle': r'TStyle',
  r'Technology': r'Technology',
  r'ThePublicEditor': r'ThePublicEditor',
  r'TheUpshot': r'TheUpshot',
  r'Theater': r'Theater',
  r'TimesTopics': r'TimesTopics',
  r'TimesMachine': r'TimesMachine',
  r'TodaysHeadlines': r'TodaysHeadlines',
  r'Topics': r'Topics',
  r'Travel': r'Travel',
  r'US': r'US',
  r'Universal': r'Universal',
  r'UrbanEye': r'UrbanEye',
  r'Washington': r'Washington',
  r'WeekInReview': r'WeekInReview',
  r'World': r'World',
  r'YourMoney': r'YourMoney',
};
const _FavoritesectionValueEnumMap = {
  r'Arts': Section.Arts,
  r'Automobiles': Section.Automobiles,
  r'Autos': Section.Autos,
  r'Blogs': Section.Blogs,
  r'Books': Section.Books,
  r'Booming': Section.Booming,
  r'Business': Section.Business,
  r'BusinessDay': Section.BusinessDay,
  r'Corrections': Section.Corrections,
  r'CrosswordsAndGames': Section.CrosswordsAndGames,
  r'CrosswordsOrGames': Section.CrosswordsOrGames,
  r'DiningAndWine': Section.DiningAndWine,
  r'EditorsNotes': Section.EditorsNotes,
  r'Education': Section.Education,
  r'FashionAndStyle': Section.FashionAndStyle,
  r'Food': Section.Food,
  r'FrontPage': Section.FrontPage,
  r'Giving': Section.Giving,
  r'GlobalHome': Section.GlobalHome,
  r'GreatHomesAndDestinations': Section.GreatHomesAndDestinations,
  r'Health': Section.Health,
  r'HomeAndGarden': Section.HomeAndGarden,
  r'InternationalHome': Section.InternationalHome,
  r'JobMarket': Section.JobMarket,
  r'Learning': Section.Learning,
  r'Magazine': Section.Magazine,
  r'Movies': Section.Movies,
  r'Multimedia': Section.Multimedia,
  r'MultimediaOrPhotos': Section.MultimediaOrPhotos,
  r'NYOrRegion': Section.NYOrRegion,
  r'NYRegion': Section.NYRegion,
  r'NYTNow': Section.NYTNow,
  r'National': Section.National,
  r'NewYork': Section.NewYork,
  r'NewYorkAndRegion': Section.NewYorkAndRegion,
  r'Obituaries': Section.Obituaries,
  r'Olympics': Section.Olympics,
  r'Open': Section.Open,
  r'Opinion': Section.Opinion,
  r'PaidDeathNotices': Section.PaidDeathNotices,
  r'PublicEditor': Section.PublicEditor,
  r'RealEstate': Section.RealEstate,
  r'Science': Section.Science,
  r'Sports': Section.Sports,
  r'Style': Section.Style,
  r'SundayMagazine': Section.SundayMagazine,
  r'SundayReview': Section.SundayReview,
  r'TMagazine': Section.TMagazine,
  r'TStyle': Section.TStyle,
  r'Technology': Section.Technology,
  r'ThePublicEditor': Section.ThePublicEditor,
  r'TheUpshot': Section.TheUpshot,
  r'Theater': Section.Theater,
  r'TimesTopics': Section.TimesTopics,
  r'TimesMachine': Section.TimesMachine,
  r'TodaysHeadlines': Section.TodaysHeadlines,
  r'Topics': Section.Topics,
  r'Travel': Section.Travel,
  r'US': Section.US,
  r'Universal': Section.Universal,
  r'UrbanEye': Section.UrbanEye,
  r'Washington': Section.Washington,
  r'WeekInReview': Section.WeekInReview,
  r'World': Section.World,
  r'YourMoney': Section.YourMoney,
};

Id _favoriteGetId(Favorite object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _favoriteGetLinks(Favorite object) {
  return [];
}

void _favoriteAttach(IsarCollection<dynamic> col, Id id, Favorite object) {
  object.id = id;
}

extension FavoriteQueryWhereSort on QueryBuilder<Favorite, Favorite, QWhere> {
  QueryBuilder<Favorite, Favorite, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension FavoriteQueryWhere on QueryBuilder<Favorite, Favorite, QWhereClause> {
  QueryBuilder<Favorite, Favorite, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension FavoriteQueryFilter
    on QueryBuilder<Favorite, Favorite, QFilterCondition> {
  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> sectionEqualTo(
    Section value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> sectionGreaterThan(
    Section value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> sectionLessThan(
    Section value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> sectionBetween(
    Section lower,
    Section upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'section',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> sectionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> sectionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> sectionContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'section',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> sectionMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'section',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> sectionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'section',
        value: '',
      ));
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterFilterCondition> sectionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'section',
        value: '',
      ));
    });
  }
}

extension FavoriteQueryObject
    on QueryBuilder<Favorite, Favorite, QFilterCondition> {}

extension FavoriteQueryLinks
    on QueryBuilder<Favorite, Favorite, QFilterCondition> {}

extension FavoriteQuerySortBy on QueryBuilder<Favorite, Favorite, QSortBy> {
  QueryBuilder<Favorite, Favorite, QAfterSortBy> sortBySection() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'section', Sort.asc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> sortBySectionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'section', Sort.desc);
    });
  }
}

extension FavoriteQuerySortThenBy
    on QueryBuilder<Favorite, Favorite, QSortThenBy> {
  QueryBuilder<Favorite, Favorite, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> thenBySection() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'section', Sort.asc);
    });
  }

  QueryBuilder<Favorite, Favorite, QAfterSortBy> thenBySectionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'section', Sort.desc);
    });
  }
}

extension FavoriteQueryWhereDistinct
    on QueryBuilder<Favorite, Favorite, QDistinct> {
  QueryBuilder<Favorite, Favorite, QDistinct> distinctBySection(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'section', caseSensitive: caseSensitive);
    });
  }
}

extension FavoriteQueryProperty
    on QueryBuilder<Favorite, Favorite, QQueryProperty> {
  QueryBuilder<Favorite, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Favorite, Section, QQueryOperations> sectionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'section');
    });
  }
}
