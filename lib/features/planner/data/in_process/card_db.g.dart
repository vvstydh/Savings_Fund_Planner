// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_db.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCardDBCollection on Isar {
  IsarCollection<CardDB> get cardDBs => this.collection();
}

const CardDBSchema = CollectionSchema(
  name: r'CardDB',
  id: 228102962991858224,
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
  estimateSize: _cardDBEstimateSize,
  serialize: _cardDBSerialize,
  deserialize: _cardDBDeserialize,
  deserializeProp: _cardDBDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _cardDBGetId,
  getLinks: _cardDBGetLinks,
  attach: _cardDBAttach,
  version: '3.1.0+1',
);

int _cardDBEstimateSize(
  CardDB object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.cardImagePath.length * 3;
  bytesCount += 3 + object.goal.length * 3;
  return bytesCount;
}

void _cardDBSerialize(
  CardDB object,
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

CardDB _cardDBDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CardDB(
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

P _cardDBDeserializeProp<P>(
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

Id _cardDBGetId(CardDB object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _cardDBGetLinks(CardDB object) {
  return [];
}

void _cardDBAttach(IsarCollection<dynamic> col, Id id, CardDB object) {
  object.id = id;
}

extension CardDBQueryWhereSort on QueryBuilder<CardDB, CardDB, QWhere> {
  QueryBuilder<CardDB, CardDB, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension CardDBQueryWhere on QueryBuilder<CardDB, CardDB, QWhereClause> {
  QueryBuilder<CardDB, CardDB, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<CardDB, CardDB, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterWhereClause> idBetween(
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

extension CardDBQueryFilter on QueryBuilder<CardDB, CardDB, QFilterCondition> {
  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> cardColorValueBlueEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardColorValueBlue',
        value: value,
      ));
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition>
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition>
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> cardColorValueBlueBetween(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition>
      cardColorValueGreenEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardColorValueGreen',
        value: value,
      ));
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition>
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition>
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition>
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> cardColorValueRedEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardColorValueRed',
        value: value,
      ));
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition>
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> cardColorValueRedLessThan(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> cardColorValueRedBetween(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> cardImagePathEqualTo(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> cardImagePathGreaterThan(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> cardImagePathLessThan(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> cardImagePathBetween(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> cardImagePathStartsWith(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> cardImagePathEndsWith(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> cardImagePathContains(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> cardImagePathMatches(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> cardImagePathIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'cardImagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition>
      cardImagePathIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'cardImagePath',
        value: '',
      ));
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> goalEqualTo(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> goalGreaterThan(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> goalLessThan(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> goalBetween(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> goalStartsWith(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> goalEndsWith(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> goalContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'goal',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> goalMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'goal',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> goalIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'goal',
        value: '',
      ));
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> goalIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'goal',
        value: '',
      ));
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> idBetween(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> personHasEqualTo(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> personHasGreaterThan(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> personHasLessThan(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> personHasBetween(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> personNeedEqualTo(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> personNeedGreaterThan(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> personNeedLessThan(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> personNeedBetween(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition>
      progressLineColorValueBlueEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progressLineColorValueBlue',
        value: value,
      ));
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition>
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition>
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition>
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition>
      progressLineColorValueGreenEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progressLineColorValueGreen',
        value: value,
      ));
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition>
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition>
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition>
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition>
      progressLineColorValueRedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'progressLineColorValueRed',
        value: value,
      ));
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition>
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition>
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition>
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> progressLineValueEqualTo(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition>
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> progressLineValueLessThan(
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

  QueryBuilder<CardDB, CardDB, QAfterFilterCondition> progressLineValueBetween(
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

extension CardDBQueryObject on QueryBuilder<CardDB, CardDB, QFilterCondition> {}

extension CardDBQueryLinks on QueryBuilder<CardDB, CardDB, QFilterCondition> {}

extension CardDBQuerySortBy on QueryBuilder<CardDB, CardDB, QSortBy> {
  QueryBuilder<CardDB, CardDB, QAfterSortBy> sortByCardColorValueBlue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueBlue', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> sortByCardColorValueBlueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueBlue', Sort.desc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> sortByCardColorValueGreen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueGreen', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> sortByCardColorValueGreenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueGreen', Sort.desc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> sortByCardColorValueRed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueRed', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> sortByCardColorValueRedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueRed', Sort.desc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> sortByCardImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardImagePath', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> sortByCardImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardImagePath', Sort.desc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> sortByGoal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> sortByGoalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.desc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> sortByPersonHas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personHas', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> sortByPersonHasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personHas', Sort.desc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> sortByPersonNeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personNeed', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> sortByPersonNeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personNeed', Sort.desc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy>
      sortByProgressLineColorValueBlue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueBlue', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy>
      sortByProgressLineColorValueBlueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueBlue', Sort.desc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy>
      sortByProgressLineColorValueGreen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueGreen', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy>
      sortByProgressLineColorValueGreenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueGreen', Sort.desc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> sortByProgressLineColorValueRed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueRed', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy>
      sortByProgressLineColorValueRedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueRed', Sort.desc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> sortByProgressLineValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineValue', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> sortByProgressLineValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineValue', Sort.desc);
    });
  }
}

extension CardDBQuerySortThenBy on QueryBuilder<CardDB, CardDB, QSortThenBy> {
  QueryBuilder<CardDB, CardDB, QAfterSortBy> thenByCardColorValueBlue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueBlue', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> thenByCardColorValueBlueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueBlue', Sort.desc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> thenByCardColorValueGreen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueGreen', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> thenByCardColorValueGreenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueGreen', Sort.desc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> thenByCardColorValueRed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueRed', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> thenByCardColorValueRedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardColorValueRed', Sort.desc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> thenByCardImagePath() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardImagePath', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> thenByCardImagePathDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'cardImagePath', Sort.desc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> thenByGoal() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> thenByGoalDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'goal', Sort.desc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> thenByPersonHas() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personHas', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> thenByPersonHasDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personHas', Sort.desc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> thenByPersonNeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personNeed', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> thenByPersonNeedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'personNeed', Sort.desc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy>
      thenByProgressLineColorValueBlue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueBlue', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy>
      thenByProgressLineColorValueBlueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueBlue', Sort.desc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy>
      thenByProgressLineColorValueGreen() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueGreen', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy>
      thenByProgressLineColorValueGreenDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueGreen', Sort.desc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> thenByProgressLineColorValueRed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueRed', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy>
      thenByProgressLineColorValueRedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineColorValueRed', Sort.desc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> thenByProgressLineValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineValue', Sort.asc);
    });
  }

  QueryBuilder<CardDB, CardDB, QAfterSortBy> thenByProgressLineValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'progressLineValue', Sort.desc);
    });
  }
}

extension CardDBQueryWhereDistinct on QueryBuilder<CardDB, CardDB, QDistinct> {
  QueryBuilder<CardDB, CardDB, QDistinct> distinctByCardColorValueBlue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardColorValueBlue');
    });
  }

  QueryBuilder<CardDB, CardDB, QDistinct> distinctByCardColorValueGreen() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardColorValueGreen');
    });
  }

  QueryBuilder<CardDB, CardDB, QDistinct> distinctByCardColorValueRed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardColorValueRed');
    });
  }

  QueryBuilder<CardDB, CardDB, QDistinct> distinctByCardImagePath(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'cardImagePath',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CardDB, CardDB, QDistinct> distinctByGoal(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'goal', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<CardDB, CardDB, QDistinct> distinctByPersonHas() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'personHas');
    });
  }

  QueryBuilder<CardDB, CardDB, QDistinct> distinctByPersonNeed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'personNeed');
    });
  }

  QueryBuilder<CardDB, CardDB, QDistinct>
      distinctByProgressLineColorValueBlue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'progressLineColorValueBlue');
    });
  }

  QueryBuilder<CardDB, CardDB, QDistinct>
      distinctByProgressLineColorValueGreen() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'progressLineColorValueGreen');
    });
  }

  QueryBuilder<CardDB, CardDB, QDistinct>
      distinctByProgressLineColorValueRed() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'progressLineColorValueRed');
    });
  }

  QueryBuilder<CardDB, CardDB, QDistinct> distinctByProgressLineValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'progressLineValue');
    });
  }
}

extension CardDBQueryProperty on QueryBuilder<CardDB, CardDB, QQueryProperty> {
  QueryBuilder<CardDB, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<CardDB, int, QQueryOperations> cardColorValueBlueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardColorValueBlue');
    });
  }

  QueryBuilder<CardDB, int, QQueryOperations> cardColorValueGreenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardColorValueGreen');
    });
  }

  QueryBuilder<CardDB, int, QQueryOperations> cardColorValueRedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardColorValueRed');
    });
  }

  QueryBuilder<CardDB, String, QQueryOperations> cardImagePathProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'cardImagePath');
    });
  }

  QueryBuilder<CardDB, String, QQueryOperations> goalProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'goal');
    });
  }

  QueryBuilder<CardDB, double, QQueryOperations> personHasProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'personHas');
    });
  }

  QueryBuilder<CardDB, double, QQueryOperations> personNeedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'personNeed');
    });
  }

  QueryBuilder<CardDB, int, QQueryOperations>
      progressLineColorValueBlueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'progressLineColorValueBlue');
    });
  }

  QueryBuilder<CardDB, int, QQueryOperations>
      progressLineColorValueGreenProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'progressLineColorValueGreen');
    });
  }

  QueryBuilder<CardDB, int, QQueryOperations>
      progressLineColorValueRedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'progressLineColorValueRed');
    });
  }

  QueryBuilder<CardDB, double, QQueryOperations> progressLineValueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'progressLineValue');
    });
  }
}
