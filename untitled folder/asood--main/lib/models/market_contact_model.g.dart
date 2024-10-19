// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_contact_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetMarketContactModelCollection on Isar {
  IsarCollection<MarketContactModel> get marketContactModels =>
      this.collection();
}

const MarketContactModelSchema = CollectionSchema(
  name: r'MarketContactModel',
  id: -8953165852534533474,
  properties: {
    r'email': PropertySchema(
      id: 0,
      name: r'email',
      type: IsarType.string,
    ),
    r'fax': PropertySchema(
      id: 1,
      name: r'fax',
      type: IsarType.string,
    ),
    r'firstMobileNumber': PropertySchema(
      id: 2,
      name: r'firstMobileNumber',
      type: IsarType.string,
    ),
    r'instagramId': PropertySchema(
      id: 3,
      name: r'instagramId',
      type: IsarType.string,
    ),
    r'market': PropertySchema(
      id: 4,
      name: r'market',
      type: IsarType.long,
    ),
    r'secondMobileNumber': PropertySchema(
      id: 5,
      name: r'secondMobileNumber',
      type: IsarType.string,
    ),
    r'telegramId': PropertySchema(
      id: 6,
      name: r'telegramId',
      type: IsarType.string,
    ),
    r'telephone': PropertySchema(
      id: 7,
      name: r'telephone',
      type: IsarType.string,
    ),
    r'websiteUrl': PropertySchema(
      id: 8,
      name: r'websiteUrl',
      type: IsarType.string,
    )
  },
  estimateSize: _marketContactModelEstimateSize,
  serialize: _marketContactModelSerialize,
  deserialize: _marketContactModelDeserialize,
  deserializeProp: _marketContactModelDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _marketContactModelGetId,
  getLinks: _marketContactModelGetLinks,
  attach: _marketContactModelAttach,
  version: '3.1.0',
);

int _marketContactModelEstimateSize(
  MarketContactModel object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.email;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.fax;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.firstMobileNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.instagramId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.secondMobileNumber;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.telegramId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.telephone;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.websiteUrl;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _marketContactModelSerialize(
  MarketContactModel object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.email);
  writer.writeString(offsets[1], object.fax);
  writer.writeString(offsets[2], object.firstMobileNumber);
  writer.writeString(offsets[3], object.instagramId);
  writer.writeLong(offsets[4], object.market);
  writer.writeString(offsets[5], object.secondMobileNumber);
  writer.writeString(offsets[6], object.telegramId);
  writer.writeString(offsets[7], object.telephone);
  writer.writeString(offsets[8], object.websiteUrl);
}

MarketContactModel _marketContactModelDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MarketContactModel(
    email: reader.readStringOrNull(offsets[0]),
    fax: reader.readStringOrNull(offsets[1]),
    firstMobileNumber: reader.readStringOrNull(offsets[2]),
    instagramId: reader.readStringOrNull(offsets[3]),
    market: reader.readLongOrNull(offsets[4]),
    secondMobileNumber: reader.readStringOrNull(offsets[5]),
    telegramId: reader.readStringOrNull(offsets[6]),
    telephone: reader.readStringOrNull(offsets[7]),
    websiteUrl: reader.readStringOrNull(offsets[8]),
  );
  object.id = id;
  return object;
}

P _marketContactModelDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    case 5:
      return (reader.readStringOrNull(offset)) as P;
    case 6:
      return (reader.readStringOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _marketContactModelGetId(MarketContactModel object) {
  return object.id ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _marketContactModelGetLinks(
    MarketContactModel object) {
  return [];
}

void _marketContactModelAttach(
    IsarCollection<dynamic> col, Id id, MarketContactModel object) {
  object.id = id;
}

extension MarketContactModelQueryWhereSort
    on QueryBuilder<MarketContactModel, MarketContactModel, QWhere> {
  QueryBuilder<MarketContactModel, MarketContactModel, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension MarketContactModelQueryWhere
    on QueryBuilder<MarketContactModel, MarketContactModel, QWhereClause> {
  QueryBuilder<MarketContactModel, MarketContactModel, QAfterWhereClause>
      idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterWhereClause>
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

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterWhereClause>
      idGreaterThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterWhereClause>
      idLessThan(Id id, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterWhereClause>
      idBetween(
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

extension MarketContactModelQueryFilter
    on QueryBuilder<MarketContactModel, MarketContactModel, QFilterCondition> {
  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      emailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      emailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'email',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      emailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      emailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      emailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      emailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'email',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      emailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      emailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      emailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'email',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      emailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'email',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      emailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      emailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'email',
        value: '',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      faxIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'fax',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      faxIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'fax',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      faxEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fax',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      faxGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'fax',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      faxLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'fax',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      faxBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'fax',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      faxStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'fax',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      faxEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'fax',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      faxContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'fax',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      faxMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'fax',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      faxIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'fax',
        value: '',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      faxIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'fax',
        value: '',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      firstMobileNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'firstMobileNumber',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      firstMobileNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'firstMobileNumber',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      firstMobileNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstMobileNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      firstMobileNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firstMobileNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      firstMobileNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firstMobileNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      firstMobileNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firstMobileNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      firstMobileNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'firstMobileNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      firstMobileNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'firstMobileNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      firstMobileNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'firstMobileNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      firstMobileNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'firstMobileNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      firstMobileNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstMobileNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      firstMobileNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'firstMobileNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      idEqualTo(Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      idGreaterThan(
    Id? value, {
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

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      idLessThan(
    Id? value, {
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

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      idBetween(
    Id? lower,
    Id? upper, {
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

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      instagramIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'instagramId',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      instagramIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'instagramId',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      instagramIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'instagramId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      instagramIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'instagramId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      instagramIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'instagramId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      instagramIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'instagramId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      instagramIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'instagramId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      instagramIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'instagramId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      instagramIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'instagramId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      instagramIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'instagramId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      instagramIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'instagramId',
        value: '',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      instagramIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'instagramId',
        value: '',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      marketIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'market',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      marketIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'market',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      marketEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'market',
        value: value,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      marketGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'market',
        value: value,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      marketLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'market',
        value: value,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      marketBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'market',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      secondMobileNumberIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'secondMobileNumber',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      secondMobileNumberIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'secondMobileNumber',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      secondMobileNumberEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secondMobileNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      secondMobileNumberGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'secondMobileNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      secondMobileNumberLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'secondMobileNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      secondMobileNumberBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'secondMobileNumber',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      secondMobileNumberStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'secondMobileNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      secondMobileNumberEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'secondMobileNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      secondMobileNumberContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'secondMobileNumber',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      secondMobileNumberMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'secondMobileNumber',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      secondMobileNumberIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'secondMobileNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      secondMobileNumberIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'secondMobileNumber',
        value: '',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telegramIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'telegramId',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telegramIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'telegramId',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telegramIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'telegramId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telegramIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'telegramId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telegramIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'telegramId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telegramIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'telegramId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telegramIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'telegramId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telegramIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'telegramId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telegramIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'telegramId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telegramIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'telegramId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telegramIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'telegramId',
        value: '',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telegramIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'telegramId',
        value: '',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telephoneIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'telephone',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telephoneIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'telephone',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telephoneEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'telephone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telephoneGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'telephone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telephoneLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'telephone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telephoneBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'telephone',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telephoneStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'telephone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telephoneEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'telephone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telephoneContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'telephone',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telephoneMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'telephone',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telephoneIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'telephone',
        value: '',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      telephoneIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'telephone',
        value: '',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      websiteUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'websiteUrl',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      websiteUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'websiteUrl',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      websiteUrlEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'websiteUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      websiteUrlGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'websiteUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      websiteUrlLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'websiteUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      websiteUrlBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'websiteUrl',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      websiteUrlStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'websiteUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      websiteUrlEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'websiteUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      websiteUrlContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'websiteUrl',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      websiteUrlMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'websiteUrl',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      websiteUrlIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'websiteUrl',
        value: '',
      ));
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterFilterCondition>
      websiteUrlIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'websiteUrl',
        value: '',
      ));
    });
  }
}

extension MarketContactModelQueryObject
    on QueryBuilder<MarketContactModel, MarketContactModel, QFilterCondition> {}

extension MarketContactModelQueryLinks
    on QueryBuilder<MarketContactModel, MarketContactModel, QFilterCondition> {}

extension MarketContactModelQuerySortBy
    on QueryBuilder<MarketContactModel, MarketContactModel, QSortBy> {
  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      sortByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      sortByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      sortByFax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fax', Sort.asc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      sortByFaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fax', Sort.desc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      sortByFirstMobileNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstMobileNumber', Sort.asc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      sortByFirstMobileNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstMobileNumber', Sort.desc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      sortByInstagramId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'instagramId', Sort.asc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      sortByInstagramIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'instagramId', Sort.desc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      sortByMarket() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'market', Sort.asc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      sortByMarketDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'market', Sort.desc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      sortBySecondMobileNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondMobileNumber', Sort.asc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      sortBySecondMobileNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondMobileNumber', Sort.desc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      sortByTelegramId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telegramId', Sort.asc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      sortByTelegramIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telegramId', Sort.desc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      sortByTelephone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telephone', Sort.asc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      sortByTelephoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telephone', Sort.desc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      sortByWebsiteUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'websiteUrl', Sort.asc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      sortByWebsiteUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'websiteUrl', Sort.desc);
    });
  }
}

extension MarketContactModelQuerySortThenBy
    on QueryBuilder<MarketContactModel, MarketContactModel, QSortThenBy> {
  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      thenByEmail() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.asc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      thenByEmailDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'email', Sort.desc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      thenByFax() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fax', Sort.asc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      thenByFaxDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'fax', Sort.desc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      thenByFirstMobileNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstMobileNumber', Sort.asc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      thenByFirstMobileNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstMobileNumber', Sort.desc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      thenByInstagramId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'instagramId', Sort.asc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      thenByInstagramIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'instagramId', Sort.desc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      thenByMarket() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'market', Sort.asc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      thenByMarketDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'market', Sort.desc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      thenBySecondMobileNumber() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondMobileNumber', Sort.asc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      thenBySecondMobileNumberDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'secondMobileNumber', Sort.desc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      thenByTelegramId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telegramId', Sort.asc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      thenByTelegramIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telegramId', Sort.desc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      thenByTelephone() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telephone', Sort.asc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      thenByTelephoneDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'telephone', Sort.desc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      thenByWebsiteUrl() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'websiteUrl', Sort.asc);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QAfterSortBy>
      thenByWebsiteUrlDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'websiteUrl', Sort.desc);
    });
  }
}

extension MarketContactModelQueryWhereDistinct
    on QueryBuilder<MarketContactModel, MarketContactModel, QDistinct> {
  QueryBuilder<MarketContactModel, MarketContactModel, QDistinct>
      distinctByEmail({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'email', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QDistinct> distinctByFax(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'fax', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QDistinct>
      distinctByFirstMobileNumber({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firstMobileNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QDistinct>
      distinctByInstagramId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'instagramId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QDistinct>
      distinctByMarket() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'market');
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QDistinct>
      distinctBySecondMobileNumber({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'secondMobileNumber',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QDistinct>
      distinctByTelegramId({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'telegramId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QDistinct>
      distinctByTelephone({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'telephone', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<MarketContactModel, MarketContactModel, QDistinct>
      distinctByWebsiteUrl({bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'websiteUrl', caseSensitive: caseSensitive);
    });
  }
}

extension MarketContactModelQueryProperty
    on QueryBuilder<MarketContactModel, MarketContactModel, QQueryProperty> {
  QueryBuilder<MarketContactModel, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<MarketContactModel, String?, QQueryOperations> emailProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'email');
    });
  }

  QueryBuilder<MarketContactModel, String?, QQueryOperations> faxProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'fax');
    });
  }

  QueryBuilder<MarketContactModel, String?, QQueryOperations>
      firstMobileNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firstMobileNumber');
    });
  }

  QueryBuilder<MarketContactModel, String?, QQueryOperations>
      instagramIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'instagramId');
    });
  }

  QueryBuilder<MarketContactModel, int?, QQueryOperations> marketProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'market');
    });
  }

  QueryBuilder<MarketContactModel, String?, QQueryOperations>
      secondMobileNumberProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'secondMobileNumber');
    });
  }

  QueryBuilder<MarketContactModel, String?, QQueryOperations>
      telegramIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'telegramId');
    });
  }

  QueryBuilder<MarketContactModel, String?, QQueryOperations>
      telephoneProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'telephone');
    });
  }

  QueryBuilder<MarketContactModel, String?, QQueryOperations>
      websiteUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'websiteUrl');
    });
  }
}
