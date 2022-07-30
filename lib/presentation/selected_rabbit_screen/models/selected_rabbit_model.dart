import 'package:get/get.dart';

class SelectedRabbitModel {
  Rx<String> rabbitNameTxt = Rx('Rabbit 001');

  Rx<String> rabbitTypeTxt = Rx('Buck');

  Rx<String> rabbitBreedTxt = Rx('Californian');

  Rx<String> rabbitHeightTxt = Rx('3.5 inches');

  Rx<String> rabbitWeidthTxt = Rx('4.5 inches');

  Rx<String> rabbitWeightTxt = Rx('1.07 kg');

  Rx<String> dOPTxt = Rx('July 20, 2022 ');

  get rabbitWidthTxt => null;
}

class SelectedRabbitsModel {}
