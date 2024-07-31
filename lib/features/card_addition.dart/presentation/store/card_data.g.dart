// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card_data.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CardData on CardDataStore, Store {
  late final _$goalAtom = Atom(name: 'CardDataStore.goal', context: context);

  @override
  String get goal {
    _$goalAtom.reportRead();
    return super.goal;
  }

  @override
  set goal(String value) {
    _$goalAtom.reportWrite(value, super.goal, () {
      super.goal = value;
    });
  }

  late final _$listAtom = Atom(name: 'CardDataStore.list', context: context);

  @override
  List<String> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(List<String> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  late final _$CardDataStoreActionController =
      ActionController(name: 'CardDataStore', context: context);

  @override
  dynamic add() {
    final _$actionInfo =
        _$CardDataStoreActionController.startAction(name: 'CardDataStore.add');
    try {
      return super.add();
    } finally {
      _$CardDataStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
goal: ${goal},
list: ${list}
    ''';
  }
}
