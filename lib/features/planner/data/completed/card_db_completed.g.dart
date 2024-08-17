// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_db_completed.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCardDbCompletedCollection on Isar {
  IsarCollection<CardDbCompleted> get cardDbCompleteds => this.collection();
}

const CardDbCompletedSchema = CollectionSchema(
  name: r'CardDbCompleted',
  id: 7826506716969188704,
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
  estimateSize: _cardDbCompletedEstimateSize,
  serialize: _cardDbCompletedSerialize,
  deserialize: _cardDbCompletedDeserialize,
  deserializeProp: _cardDbCompletedDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _cardDbCompletedGetId,
  getLinks: _cardDbCompletedGetLinks,
  attach: _cardDbCompletedAttach,
  version: '3.1.0+1',
);

int _cardDbCompletedEstimateSize(
  CardDbCompleted object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.cardImagePath.length * 3;
  bytesCount += 3 + object.goal.length * 3;
  return bytesCount;
}

void _cardDbCompletedSerialize(
  CardDbCompleted object,
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

CardDbCompleted _cardDbCompletedDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CardDbCompleted(
    cardColorValueBlue: reader.readLong(offsets[0]),
    cardColorValueGreen: reader.readLong(offsets[1]),
    cardColorValueRed: reader.readLong(offsets[2]),
    cardImagePath: reader.readString(offsets[3]),
    goal: reader.readString(offsets[4]),
    personHas: reader.readDouble(offsets[5]),
    personNeed: reader.readDouble(offsets[6]),
    progressLineColorValueBlue: reader.readLong(offsets[7]),
    progressLineColorValueGreen: reader.readLong(offsets[8]),
    progressLineColorValueRed: reader.readLong(offsets[9]),
    progressLineValue: reader.readDouble(offsets[10]),
  );
  object.id = id;
  return object;
}

P _cardDbCompletedDeserializeProp<P>(
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

Id _cardDbCompletedGetId(CardDbCompleted object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _cardDbCompletedGetLinks(CardDbCompleted object) {
  return [];
}

void _cardDbCompletedAttach(
    IsarCollection<dynamic> col, Id id, CardDbCompleted object) {
  object.id = id;
}

extension CardDbCompletedQueryWhereSort
    on QueryBuilder<CardDbCompleted, CardDbCompleted, QWhere> {
  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CardDbCompletedQueryWhere
    on QueryBuilder<CardDbCompleted, CardDbCompleted, QWhereClause> {
  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterWhereClause>
      idNotEqualTo(Id id) {
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterWhereClause> idLessThan(
      Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterWhereClause> idBetween(
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

extension CardDbCompletedQueryFilter
    on QueryBuilder<CardDbCompleted, CardDbCompleted, QFilterCondition> {
  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      cardColorValueBlueEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardColorValueBlue',
        value: value,
      ));
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      cardColorValueBlueGreaterThan(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      cardColorValueBlueLessThan(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      cardColorValueBlueBetween(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      cardColorValueGreenEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardColorValueGreen',
        value: value,
      ));
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      cardColorValueGreenLessThan(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      cardColorValueGreenBetween(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      cardColorValueRedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardColorValueRed',
        value: value,
      ));
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      cardColorValueRedGreaterThan(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      cardColorValueRedLessThan(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      cardColorValueRedBetween(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      cardImagePathEqualTo(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      cardImagePathGreaterThan(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      cardImagePathLessThan(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      cardImagePathBetween(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      cardImagePathStartsWith(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      cardImagePathEndsWith(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      cardImagePathContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'cardImagePath',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      cardImagePathMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'cardImagePath',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      cardImagePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardImagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      cardImagePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cardImagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      goalEqualTo(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      goalGreaterThan(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      goalLessThan(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      goalBetween(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      goalStartsWith(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      goalEndsWith(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      goalContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'goal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      goalMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'goal',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      goalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'goal',
        value: '',
      ));
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      goalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'goal',
        value: '',
      ));
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      idGreaterThan(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      idLessThan(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      idBetween(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      personHasEqualTo(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      personHasGreaterThan(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      personHasLessThan(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      personHasBetween(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      personNeedEqualTo(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      personNeedGreaterThan(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      personNeedLessThan(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      personNeedBetween(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      progressLineColorValueBlueEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progressLineColorValueBlue',
        value: value,
      ));
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      progressLineColorValueGreenEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progressLineColorValueGreen',
        value: value,
      ));
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      progressLineColorValueRedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progressLineColorValueRed',
        value: value,
      ));
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      progressLineValueEqualTo(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      progressLineValueGreaterThan(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      progressLineValueLessThan(
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

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterFilterCondition>
      progressLineValueBetween(
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

extension CardDbCompletedQueryObject
    on QueryBuilder<CardDbCompleted, CardDbCompleted, QFilterCondition> {}

extension CardDbCompletedQueryLinks
    on QueryBuilder<CardDbCompleted, CardDbCompleted, QFilterCondition> {}

extension CardDbCompletedQuerySortBy
    on QueryBuilder<CardDbCompleted, CardDbCompleted, QSortBy> {
  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      sortByCardColorValueBlue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueBlue', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      sortByCardColorValueBlueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueBlue', Sort.desc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      sortByCardColorValueGreen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueGreen', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      sortByCardColorValueGreenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueGreen', Sort.desc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      sortByCardColorValueRed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueRed', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      sortByCardColorValueRedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueRed', Sort.desc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      sortByCardImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardImagePath', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      sortByCardImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardImagePath', Sort.desc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy> sortByGoal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      sortByGoalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.desc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      sortByPersonHas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personHas', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      sortByPersonHasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personHas', Sort.desc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      sortByPersonNeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personNeed', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      sortByPersonNeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personNeed', Sort.desc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      sortByProgressLineColorValueBlue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueBlue', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      sortByProgressLineColorValueBlueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueBlue', Sort.desc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      sortByProgressLineColorValueGreen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueGreen', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      sortByProgressLineColorValueGreenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueGreen', Sort.desc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      sortByProgressLineColorValueRed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueRed', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      sortByProgressLineColorValueRedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueRed', Sort.desc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      sortByProgressLineValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineValue', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      sortByProgressLineValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineValue', Sort.desc);
    });
  }
}

extension CardDbCompletedQuerySortThenBy
    on QueryBuilder<CardDbCompleted, CardDbCompleted, QSortThenBy> {
  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      thenByCardColorValueBlue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueBlue', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      thenByCardColorValueBlueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueBlue', Sort.desc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      thenByCardColorValueGreen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueGreen', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      thenByCardColorValueGreenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueGreen', Sort.desc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      thenByCardColorValueRed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueRed', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      thenByCardColorValueRedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueRed', Sort.desc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      thenByCardImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardImagePath', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      thenByCardImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardImagePath', Sort.desc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy> thenByGoal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      thenByGoalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.desc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      thenByPersonHas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personHas', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      thenByPersonHasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personHas', Sort.desc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      thenByPersonNeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personNeed', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      thenByPersonNeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personNeed', Sort.desc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      thenByProgressLineColorValueBlue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueBlue', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      thenByProgressLineColorValueBlueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueBlue', Sort.desc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      thenByProgressLineColorValueGreen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueGreen', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      thenByProgressLineColorValueGreenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueGreen', Sort.desc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      thenByProgressLineColorValueRed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueRed', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      thenByProgressLineColorValueRedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueRed', Sort.desc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      thenByProgressLineValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineValue', Sort.asc);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QAfterSortBy>
      thenByProgressLineValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineValue', Sort.desc);
    });
  }
}

extension CardDbCompletedQueryWhereDistinct
    on QueryBuilder<CardDbCompleted, CardDbCompleted, QDistinct> {
  QueryBuilder<CardDbCompleted, CardDbCompleted, QDistinct>
      distinctByCardColorValueBlue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardColorValueBlue');
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QDistinct>
      distinctByCardColorValueGreen() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardColorValueGreen');
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QDistinct>
      distinctByCardColorValueRed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardColorValueRed');
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QDistinct>
      distinctByCardImagePath({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardImagePath',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QDistinct> distinctByGoal(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'goal', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QDistinct>
      distinctByPersonHas() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'personHas');
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QDistinct>
      distinctByPersonNeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'personNeed');
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QDistinct>
      distinctByProgressLineColorValueBlue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'progressLineColorValueBlue');
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QDistinct>
      distinctByProgressLineColorValueGreen() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'progressLineColorValueGreen');
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QDistinct>
      distinctByProgressLineColorValueRed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'progressLineColorValueRed');
    });
  }

  QueryBuilder<CardDbCompleted, CardDbCompleted, QDistinct>
      distinctByProgressLineValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'progressLineValue');
    });
  }
}

extension CardDbCompletedQueryProperty
    on QueryBuilder<CardDbCompleted, CardDbCompleted, QQueryProperty> {
  QueryBuilder<CardDbCompleted, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CardDbCompleted, int, QQueryOperations>
      cardColorValueBlueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardColorValueBlue');
    });
  }

  QueryBuilder<CardDbCompleted, int, QQueryOperations>
      cardColorValueGreenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardColorValueGreen');
    });
  }

  QueryBuilder<CardDbCompleted, int, QQueryOperations>
      cardColorValueRedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardColorValueRed');
    });
  }

  QueryBuilder<CardDbCompleted, String, QQueryOperations>
      cardImagePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardImagePath');
    });
  }

  QueryBuilder<CardDbCompleted, String, QQueryOperations> goalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'goal');
    });
  }

  QueryBuilder<CardDbCompleted, double, QQueryOperations> personHasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'personHas');
    });
  }

  QueryBuilder<CardDbCompleted, double, QQueryOperations> personNeedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'personNeed');
    });
  }

  QueryBuilder<CardDbCompleted, int, QQueryOperations>
      progressLineColorValueBlueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'progressLineColorValueBlue');
    });
  }

  QueryBuilder<CardDbCompleted, int, QQueryOperations>
      progressLineColorValueGreenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'progressLineColorValueGreen');
    });
  }

  QueryBuilder<CardDbCompleted, int, QQueryOperations>
      progressLineColorValueRedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'progressLineColorValueRed');
    });
  }

  QueryBuilder<CardDbCompleted, double, QQueryOperations>
      progressLineValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'progressLineValue');
    });
  }
}
