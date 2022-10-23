import 'dart:ffi';
import 'dart:math';
import 'package:dict_appdator/src/init/constant/dict_constant.dart';
import 'package:dict_appdator/ui/home_dict/dumy_data.dart';
import 'package:mobx/mobx.dart';
part 'dict_viewmodel.g.dart';

class DictViewModel = _DictViewModelBase with _$DictViewModel;

abstract class _DictViewModelBase with Store {
  @observable
  int dictIndex = 0;

  @observable
  String trueWord = 'Lets Start';

  @observable
  String trueMean = 'Lets Start';

  @action
  String getWord() {
    int randomInt = Random().nextInt(50);
    return dict[randomInt];
  }

  @action
  void setWords() {
    trueWord = mydata[dictIndex][tWord];
    trueMean = mydata[dictIndex][mean];
  }
  
  @action
List testOptions() {
    String first_word = getWord();
    String second_word = getWord();
    while (first_word == second_word) {
      first_word = getWord();
    }
    String third_word = getWord();
    while (first_word == third_word) {
      third_word = getWord();
    }
    while (second_word == third_word) {
      third_word = getWord();
    }
    String forth_word = trueMean;
    List optionList = [first_word, second_word, third_word, forth_word];
    return optionList.shuffle() as List;
  }
}
