// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'helper_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HelperMobX on HelperMobXWork, Store {
  late final _$marginAtom =
      Atom(name: 'HelperMobXWork.margin', context: context);

  @override
  double get margin {
    _$marginAtom.reportRead();
    return super.margin;
  }

  @override
  set margin(double value) {
    _$marginAtom.reportWrite(value, super.margin, () {
      super.margin = value;
    });
  }

  late final _$heightAtom =
      Atom(name: 'HelperMobXWork.height', context: context);

  @override
  double get height {
    _$heightAtom.reportRead();
    return super.height;
  }

  @override
  set height(double value) {
    _$heightAtom.reportWrite(value, super.height, () {
      super.height = value;
    });
  }

  late final _$rotationAtom =
      Atom(name: 'HelperMobXWork.rotation', context: context);

  @override
  int get rotation {
    _$rotationAtom.reportRead();
    return super.rotation;
  }

  @override
  set rotation(int value) {
    _$rotationAtom.reportWrite(value, super.rotation, () {
      super.rotation = value;
    });
  }

  late final _$isPressedAtom =
      Atom(name: 'HelperMobXWork.isPressed', context: context);

  @override
  bool get isPressed {
    _$isPressedAtom.reportRead();
    return super.isPressed;
  }

  @override
  set isPressed(bool value) {
    _$isPressedAtom.reportWrite(value, super.isPressed, () {
      super.isPressed = value;
    });
  }

  late final _$HelperMobXWorkActionController =
      ActionController(name: 'HelperMobXWork', context: context);

  @override
  dynamic buttonPressed(int length) {
    final _$actionInfo = _$HelperMobXWorkActionController.startAction(
        name: 'HelperMobXWork.buttonPressed');
    try {
      return super.buttonPressed(length);
    } finally {
      _$HelperMobXWorkActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
margin: ${margin},
height: ${height},
rotation: ${rotation},
isPressed: ${isPressed}
    ''';
  }
}
