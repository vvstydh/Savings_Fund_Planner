import 'package:mobx/mobx.dart';

part 'helper_mobx.g.dart';

class HelperMobX = HelperMobXWork with _$HelperMobX;

abstract class HelperMobXWork with Store {
  @observable
  double margin = 12;

  @observable
  double height = 55;

  @observable
  int rotation = 0;

  @observable
  bool isPressed = false;

  @action
  buttonPressed(int length) {
    isPressed = !isPressed;
    if (isPressed == false) {
      margin = 12;
      height = 55;
      rotation = 0;
    } else if (isPressed) {
      margin = 67;
      height = length - 150;
      rotation = 2;
    }
  }
}
