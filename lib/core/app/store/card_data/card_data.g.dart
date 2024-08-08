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
  double get personNeed {
    _$personNeedAtom.reportRead();
    return super.personNeed;
  }

  @override
  set personNeed(double value) {
    _$personNeedAtom.reportWrite(value, super.personNeed, () {
      super.personNeed = value;
    });
  }

  late final _$personHasAtom =
      Atom(name: 'CardDataStore.personHas', context: context);

  @override
  double get personHas {
    _$personHasAtom.reportRead();
    return super.personHas;
  }

  @override
  set personHas(double value) {
    _$personHasAtom.reportWrite(value, super.personHas, () {
      super.personHas = value;
    });
  }

  late final _$progressLineValueAtom =
      Atom(name: 'CardDataStore.progressLineValue', context: context);

  @override
  double get progressLineValue {
    _$progressLineValueAtom.reportRead();
    return super.progressLineValue;
  }

  @override
  set progressLineValue(double value) {
    _$progressLineValueAtom.reportWrite(value, super.progressLineValue, () {
      super.progressLineValue = value;
    });
  }

  late final _$cardAddAmountAtom =
      Atom(name: 'CardDataStore.cardAddAmount', context: context);

  @override
  double get cardAddAmount {
    _$cardAddAmountAtom.reportRead();
    return super.cardAddAmount;
  }

  @override
  set cardAddAmount(double value) {
    _$cardAddAmountAtom.reportWrite(value, super.cardAddAmount, () {
      super.cardAddAmount = value;
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

  late final _$cardImageAtom =
      Atom(name: 'CardDataStore.cardImage', context: context);

  @override
  File? get cardImage {
    _$cardImageAtom.reportRead();
    return super.cardImage;
  }

  @override
  set cardImage(File? value) {
    _$cardImageAtom.reportWrite(value, super.cardImage, () {
      super.cardImage = value;
    });
  }

  late final _$progressLineColorAtom =
      Atom(name: 'CardDataStore.progressLineColor', context: context);

  @override
  Color get progressLineColor {
    _$progressLineColorAtom.reportRead();
    return super.progressLineColor;
  }

  @override
  set progressLineColor(Color value) {
    _$progressLineColorAtom.reportWrite(value, super.progressLineColor, () {
      super.progressLineColor = value;
    });
  }

  late final _$inProcessCompletedSwitchAtom =
      Atom(name: 'CardDataStore.inProcessCompletedSwitch', context: context);

  @override
  bool get inProcessCompletedSwitch {
    _$inProcessCompletedSwitchAtom.reportRead();
    return super.inProcessCompletedSwitch;
  }

  @override
  set inProcessCompletedSwitch(bool value) {
    _$inProcessCompletedSwitchAtom
        .reportWrite(value, super.inProcessCompletedSwitch, () {
      super.inProcessCompletedSwitch = value;
    });
  }

  late final _$inProcessAtom =
      Atom(name: 'CardDataStore.inProcess', context: context);

  @override
  ObservableList<CardListData> get inProcess {
    _$inProcessAtom.reportRead();
    return super.inProcess;
  }

  @override
  set inProcess(ObservableList<CardListData> value) {
    _$inProcessAtom.reportWrite(value, super.inProcess, () {
      super.inProcess = value;
    });
  }

  late final _$completedAtom =
      Atom(name: 'CardDataStore.completed', context: context);

  @override
  ObservableList<CardListData> get completed {
    _$completedAtom.reportRead();
    return super.completed;
  }

  @override
  set completed(ObservableList<CardListData> value) {
    _$completedAtom.reportWrite(value, super.completed, () {
      super.completed = value;
    });
  }

  late final _$pickImageAsyncAction =
      AsyncAction('CardDataStore.pickImage', context: context);

  @override
  Future<dynamic> pickImage() {
    return _$pickImageAsyncAction.run(() => super.pickImage());
  }

  late final _$CardDataStoreActionController =
      ActionController(name: 'CardDataStore', context: context);

  @override
  dynamic createprogresslinevalue() {
    final _$actionInfo = _$CardDataStoreActionController.startAction(
        name: 'CardDataStore.createprogresslinevalue');
    try {
      return super.createprogresslinevalue();
    } finally {
      _$CardDataStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic switchbutton() {
    final _$actionInfo = _$CardDataStoreActionController.startAction(
        name: 'CardDataStore.switchbutton');
    try {
      return super.switchbutton();
    } finally {
      _$CardDataStoreActionController.endAction(_$actionInfo);
    }
  }

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
  dynamic removeFromInprocess(int index) {
    final _$actionInfo = _$CardDataStoreActionController.startAction(
        name: 'CardDataStore.removeFromInprocess');
    try {
      return super.removeFromInprocess(index);
    } finally {
      _$CardDataStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic removeFromCompleted(int index) {
    final _$actionInfo = _$CardDataStoreActionController.startAction(
        name: 'CardDataStore.removeFromCompleted');
    try {
      return super.removeFromCompleted(index);
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
progressLineValue: ${progressLineValue},
cardAddAmount: ${cardAddAmount},
colorIndex: ${colorIndex},
cardColor: ${cardColor},
cardImage: ${cardImage},
progressLineColor: ${progressLineColor},
inProcessCompletedSwitch: ${inProcessCompletedSwitch},
inProcess: ${inProcess},
completed: ${completed}
    ''';
  }
}
