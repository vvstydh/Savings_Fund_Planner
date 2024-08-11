// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCardCollection on Isar {
  IsarCollection<Card> get cards => this.collection();
}

const CardSchema = CollectionSchema(
  name: r'Card',
  id: 2706062385186124215,
  properties: {
    r'cardColorValueBlue': PropertySchema(
      id: 0,
      name: r'cardColorValueBlue',
      type: IsarType.long,
    ),
    r'cardColorValueGreen': PropertySchema(
      id: 1,
      name: r'cardColorValueGreen',
      type: IsarType.long,
    ),
    r'cardColorValueRed': PropertySchema(
      id: 2,
      name: r'cardColorValueRed',
      type: IsarType.long,
    ),
    r'cardImagePath': PropertySchema(
      id: 3,
      name: r'cardImagePath',
      type: IsarType.string,
    ),
    r'goal': PropertySchema(
      id: 4,
      name: r'goal',
      type: IsarType.string,
    ),
    r'personHas': PropertySchema(
      id: 5,
      name: r'personHas',
      type: IsarType.double,
    ),
    r'personNeed': PropertySchema(
      id: 6,
      name: r'personNeed',
      type: IsarType.double,
    ),
    r'progressLineColorValueBlue': PropertySchema(
      id: 7,
      name: r'progressLineColorValueBlue',
      type: IsarType.long,
    ),
    r'progressLineColorValueGreen': PropertySchema(
      id: 8,
      name: r'progressLineColorValueGreen',
      type: IsarType.long,
    ),
    r'progressLineColorValueRed': PropertySchema(
      id: 9,
      name: r'progressLineColorValueRed',
      type: IsarType.long,
    ),
    r'progressLineValue': PropertySchema(
      id: 10,
      name: r'progressLineValue',
      type: IsarType.double,
    )
  },
  estimateSize: _cardEstimateSize,
  serialize: _cardSerialize,
  deserialize: _cardDeserialize,
  deserializeProp: _cardDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _cardGetId,
  getLinks: _cardGetLinks,
  attach: _cardAttach,
  version: '3.1.0+1',
);

int _cardEstimateSize(
  Card object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.cardImagePath.length * 3;
  bytesCount += 3 + object.goal.length * 3;
  return bytesCount;
}

void _cardSerialize(
  Card object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.cardColorValueBlue);
  writer.writeLong(offsets[1], object.cardColorValueGreen);
  writer.writeLong(offsets[2], object.cardColorValueRed);
  writer.writeString(offsets[3], object.cardImagePath);
  writer.writeString(offsets[4], object.goal);
  writer.writeDouble(offsets[5], object.personHas);
  writer.writeDouble(offsets[6], object.personNeed);
  writer.writeLong(offsets[7], object.progressLineColorValueBlue);
  writer.writeLong(offsets[8], object.progressLineColorValueGreen);
  writer.writeLong(offsets[9], object.progressLineColorValueRed);
  writer.writeDouble(offsets[10], object.progressLineValue);
}

Card _cardDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Card();
  object.cardColorValueBlue = reader.readLong(offsets[0]);
  object.cardColorValueGreen = reader.readLong(offsets[1]);
  object.cardColorValueRed = reader.readLong(offsets[2]);
  object.cardImagePath = reader.readString(offsets[3]);
  object.goal = reader.readString(offsets[4]);
  object.id = id;
  object.personHas = reader.readDouble(offsets[5]);
  object.personNeed = reader.readDouble(offsets[6]);
  object.progressLineColorValueBlue = reader.readLong(offsets[7]);
  object.progressLineColorValueGreen = reader.readLong(offsets[8]);
  object.progressLineColorValueRed = reader.readLong(offsets[9]);
  object.progressLineValue = reader.readDouble(offsets[10]);
  return object;
}

P _cardDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readDouble(offset)) as P;
    case 6:
      return (reader.readDouble(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readLong(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readDouble(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cardGetId(Card object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _cardGetLinks(Card object) {
  return [];
}

void _cardAttach(IsarCollection<dynamic> col, Id id, Card object) {
  object.id = id;
}

extension CardQueryWhereSort on QueryBuilder<Card, Card, QWhere> {
  QueryBuilder<Card, Card, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CardQueryWhere on QueryBuilder<Card, Card, QWhereClause> {
  QueryBuilder<Card, Card, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Card, Card, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Card, Card, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Card, Card, QAfterWhereClause> idBetween(
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

extension CardQueryFilter on QueryBuilder<Card, Card, QFilterCondition> {
  QueryBuilder<Card, Card, QAfterFilterCondition> cardColorValueBlueEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardColorValueBlue',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> cardColorValueBlueGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cardColorValueBlue',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> cardColorValueBlueLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cardColorValueBlue',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> cardColorValueBlueBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cardColorValueBlue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> cardColorValueGreenEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardColorValueGreen',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition>
      cardColorValueGreenGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cardColorValueGreen',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> cardColorValueGreenLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cardColorValueGreen',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> cardColorValueGreenBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cardColorValueGreen',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> cardColorValueRedEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardColorValueRed',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> cardColorValueRedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cardColorValueRed',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> cardColorValueRedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cardColorValueRed',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> cardColorValueRedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cardColorValueRed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> cardImagePathEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> cardImagePathGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'cardImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> cardImagePathLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'cardImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> cardImagePathBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'cardImagePath',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> cardImagePathStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'cardImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> cardImagePathEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'cardImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> cardImagePathContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cardImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> cardImagePathMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cardImagePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> cardImagePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardImagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> cardImagePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cardImagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> goalEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'goal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> goalGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'goal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> goalLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'goal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> goalBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'goal',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> goalStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'goal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> goalEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'goal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> goalContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'goal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> goalMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'goal',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> goalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'goal',
        value: '',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> goalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'goal',
        value: '',
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Card, Card, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Card, Card, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Card, Card, QAfterFilterCondition> personHasEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'personHas',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> personHasGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'personHas',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> personHasLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'personHas',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> personHasBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'personHas',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> personNeedEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'personNeed',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> personNeedGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'personNeed',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> personNeedLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'personNeed',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> personNeedBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'personNeed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition>
      progressLineColorValueBlueEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progressLineColorValueBlue',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition>
      progressLineColorValueBlueGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'progressLineColorValueBlue',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition>
      progressLineColorValueBlueLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'progressLineColorValueBlue',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition>
      progressLineColorValueBlueBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'progressLineColorValueBlue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition>
      progressLineColorValueGreenEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progressLineColorValueGreen',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition>
      progressLineColorValueGreenGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'progressLineColorValueGreen',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition>
      progressLineColorValueGreenLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'progressLineColorValueGreen',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition>
      progressLineColorValueGreenBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'progressLineColorValueGreen',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition>
      progressLineColorValueRedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progressLineColorValueRed',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition>
      progressLineColorValueRedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'progressLineColorValueRed',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition>
      progressLineColorValueRedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'progressLineColorValueRed',
        value: value,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition>
      progressLineColorValueRedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'progressLineColorValueRed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> progressLineValueEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progressLineValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> progressLineValueGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'progressLineValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> progressLineValueLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'progressLineValue',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Card, Card, QAfterFilterCondition> progressLineValueBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'progressLineValue',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension CardQueryObject on QueryBuilder<Card, Card, QFilterCondition> {}

extension CardQueryLinks on QueryBuilder<Card, Card, QFilterCondition> {}

extension CardQuerySortBy on QueryBuilder<Card, Card, QSortBy> {
  QueryBuilder<Card, Card, QAfterSortBy> sortByCardColorValueBlue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueBlue', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByCardColorValueBlueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueBlue', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByCardColorValueGreen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueGreen', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByCardColorValueGreenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueGreen', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByCardColorValueRed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueRed', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByCardColorValueRedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueRed', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByCardImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardImagePath', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByCardImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardImagePath', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByGoal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByGoalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByPersonHas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personHas', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByPersonHasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personHas', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByPersonNeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personNeed', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByPersonNeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personNeed', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByProgressLineColorValueBlue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueBlue', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy>
      sortByProgressLineColorValueBlueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueBlue', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByProgressLineColorValueGreen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueGreen', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy>
      sortByProgressLineColorValueGreenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueGreen', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByProgressLineColorValueRed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueRed', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByProgressLineColorValueRedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueRed', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByProgressLineValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineValue', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> sortByProgressLineValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineValue', Sort.desc);
    });
  }
}

extension CardQuerySortThenBy on QueryBuilder<Card, Card, QSortThenBy> {
  QueryBuilder<Card, Card, QAfterSortBy> thenByCardColorValueBlue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueBlue', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByCardColorValueBlueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueBlue', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByCardColorValueGreen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueGreen', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByCardColorValueGreenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueGreen', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByCardColorValueRed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueRed', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByCardColorValueRedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueRed', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByCardImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardImagePath', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByCardImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardImagePath', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByGoal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByGoalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByPersonHas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personHas', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByPersonHasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personHas', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByPersonNeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personNeed', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByPersonNeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personNeed', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByProgressLineColorValueBlue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueBlue', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy>
      thenByProgressLineColorValueBlueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueBlue', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByProgressLineColorValueGreen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueGreen', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy>
      thenByProgressLineColorValueGreenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueGreen', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByProgressLineColorValueRed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueRed', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByProgressLineColorValueRedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueRed', Sort.desc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByProgressLineValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineValue', Sort.asc);
    });
  }

  QueryBuilder<Card, Card, QAfterSortBy> thenByProgressLineValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineValue', Sort.desc);
    });
  }
}

extension CardQueryWhereDistinct on QueryBuilder<Card, Card, QDistinct> {
  QueryBuilder<Card, Card, QDistinct> distinctByCardColorValueBlue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardColorValueBlue');
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByCardColorValueGreen() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardColorValueGreen');
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByCardColorValueRed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardColorValueRed');
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByCardImagePath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardImagePath',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByGoal(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'goal', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByPersonHas() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'personHas');
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByPersonNeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'personNeed');
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByProgressLineColorValueBlue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'progressLineColorValueBlue');
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByProgressLineColorValueGreen() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'progressLineColorValueGreen');
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByProgressLineColorValueRed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'progressLineColorValueRed');
    });
  }

  QueryBuilder<Card, Card, QDistinct> distinctByProgressLineValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'progressLineValue');
    });
  }
}

extension CardQueryProperty on QueryBuilder<Card, Card, QQueryProperty> {
  QueryBuilder<Card, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Card, int, QQueryOperations> cardColorValueBlueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardColorValueBlue');
    });
  }

  QueryBuilder<Card, int, QQueryOperations> cardColorValueGreenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardColorValueGreen');
    });
  }

  QueryBuilder<Card, int, QQueryOperations> cardColorValueRedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardColorValueRed');
    });
  }

  QueryBuilder<Card, String, QQueryOperations> cardImagePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardImagePath');
    });
  }

  QueryBuilder<Card, String, QQueryOperations> goalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'goal');
    });
  }

  QueryBuilder<Card, double, QQueryOperations> personHasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'personHas');
    });
  }

  QueryBuilder<Card, double, QQueryOperations> personNeedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'personNeed');
    });
  }

  QueryBuilder<Card, int, QQueryOperations>
      progressLineColorValueBlueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'progressLineColorValueBlue');
    });
  }

  QueryBuilder<Card, int, QQueryOperations>
      progressLineColorValueGreenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'progressLineColorValueGreen');
    });
  }

  QueryBuilder<Card, int, QQueryOperations>
      progressLineColorValueRedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'progressLineColorValueRed');
    });
  }

  QueryBuilder<Card, double, QQueryOperations> progressLineValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'progressLineValue');
    });
  }
}
