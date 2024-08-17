
import 'package:image_picker/image_picker.dart';
import 'package:mobx/mobx.dart';
import 'package:savings_fund_planner/features/planner/data/completed/card_db_completed.dart';
import 'package:savings_fund_planner/features/planner/data/in_process/card_db.dart';

part 'card_data.g.dart';

class CardData = CardDataStore with _$CardData;

abstract class CardDataStore with Store {
  @observable
  String goal = '';

  @observable
  double personNeed = 0;

  @observable
  double personHas = 0;

  @observable
  double progressLineValue = 0;

  @observable
  double cardAddAmount = 0;

  @observable
  int colorIndex = 0;

  @observable
  int cardColorValueRed = 255;

  @observable
  int cardColorValueGreen = 255;

  @observable
  int cardColorValueBlue = 255;

  @observable
  int progressLineColorValueRed = 0;

  @observable
  int progressLineColorValueGreen = 186;

  @observable
  int progressLineColorValueBlue = 19;

  @observable
  String cardImagePath = '';

  @observable
  bool inProcessCompletedSwitch = true;

  @observable
  ObservableList<CardDB> inProcess = ObservableList<CardDB>();

  @observable
  ObservableList<CardDbCompleted> completed = ObservableList<CardDbCompleted>();

  @action
  createprogresslinevalue() {
    progressLineValue = (personHas / (personNeed / 100)) / 100;
  }

  @action
  switchbutton() {
    inProcessCompletedSwitch = !inProcessCompletedSwitch;
  }

  @action
  add() {
    progressLineValue = (personHas / (personNeed / 100)) / 100;
    inProcess.add(CardDB(
      goal: goal,
      personHas: personHas,
      personNeed: personNeed,
      cardColorValueRed: cardColorValueRed,
      cardColorValueGreen: cardColorValueGreen,
      cardColorValueBlue: cardColorValueBlue,
      progressLineColorValueRed: progressLineColorValueRed,
      progressLineColorValueGreen: progressLineColorValueGreen,
      progressLineColorValueBlue: progressLineColorValueBlue,
      progressLineValue: progressLineValue,
      cardImagePath: cardImagePath,
    ));
  }

  @action
  removeFromCompleted(int index) {
    inProcess.removeAt(index);
  }

  @action
  changeColor(int index) {
    switch (index) {
      case 0:
        colorIndex = 0;
        cardColorValueRed = 255;
        cardColorValueGreen = 255;
        cardColorValueBlue = 255;
        progressLineColorValueRed = 0;
        progressLineColorValueGreen = 186;
        progressLineColorValueBlue = 19;
      case 1:
        colorIndex = 1;
        cardColorValueRed = 212;
        cardColorValueGreen = 240;
        cardColorValueBlue = 255;
        progressLineColorValueRed = 50;
        progressLineColorValueGreen = 82;
        progressLineColorValueBlue = 249;
      case 2:
        colorIndex = 2;
        cardColorValueRed = 241;
        cardColorValueGreen = 212;
        cardColorValueBlue = 255;
        progressLineColorValueRed = 245;
        progressLineColorValueGreen = 50;
        progressLineColorValueBlue = 249;
      case 3:
        colorIndex = 3;
        cardColorValueRed = 255;
        cardColorValueGreen = 248;
        cardColorValueBlue = 212;
        progressLineColorValueRed = 255;
        progressLineColorValueGreen = 223;
        progressLineColorValueBlue = 64;
      case 4:
        colorIndex = 4;
        cardColorValueRed = 255;
        cardColorValueGreen = 225;
        cardColorValueBlue = 212;
        progressLineColorValueRed = 249;
        progressLineColorValueGreen = 110;
        progressLineColorValueBlue = 50;
    }
  }

  cardColorIndexCheck(int progressLineColorValueRed) {
    switch (progressLineColorValueRed) {
      case 0:
        colorIndex = 0;
      case 50:
        colorIndex = 1;
      case 245:
        colorIndex = 2;
      case 255:
        colorIndex = 3;
      case 249:
        colorIndex = 4;
    }
  }

  goToEdit(int index) {
    cardColorIndexCheck(inProcess[index].progressLineColorValueRed);
    goal = inProcess[index].goal;
    personHas = inProcess[index].personHas;
    personNeed = inProcess[index].personNeed;
    progressLineValue = inProcess[index].progressLineValue;
    cardColorValueRed = inProcess[index].cardColorValueRed;
    cardColorValueGreen = inProcess[index].cardColorValueGreen;
    cardColorValueBlue = inProcess[index].cardColorValueBlue;
    progressLineColorValueRed = inProcess[index].progressLineColorValueRed;
    progressLineColorValueGreen = inProcess[index].progressLineColorValueGreen;
    progressLineColorValueBlue = inProcess[index].progressLineColorValueBlue;
    cardImagePath = inProcess[index].cardImagePath;
  }

  updateLine() {
    progressLineValue = (personHas / (personNeed / 100)) / 100;
  }

  unEdited() {
    goal = '';
    personNeed = 0;
    personHas = 0;
    colorIndex = 0;
    progressLineValue = 0;
    cardColorValueRed = 255;
    cardColorValueGreen = 255;
    cardColorValueBlue = 255;
    progressLineColorValueRed = 0;
    progressLineColorValueGreen = 186;
    progressLineColorValueBlue = 19;
    cardImagePath = '';
  }

  @action
  Future pickImage() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (returnedImage == null) return;

    cardImagePath = returnedImage.path;
  }
}
