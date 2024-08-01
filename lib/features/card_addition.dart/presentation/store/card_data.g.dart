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

  late final _$personNeedAtom =
      Atom(name: 'CardDataStore.personNeed', context: context);

  @override
  String get personNeed {
    _$personNeedAtom.reportRead();
    return super.personNeed;
  }

  @override
  set personNeed(String value) {
    _$personNeedAtom.reportWrite(value, super.personNeed, () {
      super.personNeed = value;
    });
  }

  late final _$personHasAtom =
      Atom(name: 'CardDataStore.personHas', context: context);

  @override
  String get personHas {
    _$personHasAtom.reportRead();
    return super.personHas;
  }

  @override
  set personHas(String value) {
    _$personHasAtom.reportWrite(value, super.personHas, () {
      super.personHas = value;
    });
  }

  late final _$colorIndexAtom =
      Atom(name: 'CardDataStore.colorIndex', context: context);

  @override
  int get colorIndex {
    _$colorIndexAtom.reportRead();
    return super.colorIndex;
  }

  @override
  set colorIndex(int value) {
    _$colorIndexAtom.reportWrite(value, super.colorIndex, () {
      super.colorIndex = value;
    });
  }

  late final _$cardColorAtom =
      Atom(name: 'CardDataStore.cardColor', context: context);

  @override
  Color get cardColor {
    _$cardColorAtom.reportRead();
    return super.cardColor;
  }

  @override
  set cardColor(Color value) {
    _$cardColorAtom.reportWrite(value, super.cardColor, () {
      super.cardColor = value;
    });
  }

  late final _$inProcessAtom =
      Atom(name: 'CardDataStore.inProcess', context: context);

  @override
  List<String> get inProcess {
    _$inProcessAtom.reportRead();
    return super.inProcess;
  }

  @override
  set inProcess(List<String> value) {
    _$inProcessAtom.reportWrite(value, super.inProcess, () {
      super.inProcess = value;
    });
  }

  late final _$completedAtom =
      Atom(name: 'CardDataStore.completed', context: context);

  @override
  List<String> get completed {
    _$completedAtom.reportRead();
    return super.completed;
  }

  @override
  set completed(List<String> value) {
    _$completedAtom.reportWrite(value, super.completed, () {
      super.completed = value;
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
  dynamic changeColor(int index) {
    final _$actionInfo = _$CardDataStoreActionController.startAction(
        name: 'CardDataStore.changeColor');
    try {
      return super.changeColor(index);
    } finally {
      _$CardDataStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
goal: ${goal},
personNeed: ${personNeed},
personHas: ${personHas},
colorIndex: ${colorIndex},
cardColor: ${cardColor},
inProcess: ${inProcess},
completed: ${completed}
    ''';
  }
}
