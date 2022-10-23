// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dict_viewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DictViewModel on _DictViewModelBase, Store {
  late final _$trueWordAtom =
      Atom(name: '_DictViewModelBase.trueWord', context: context);

  @override
  String get trueWord {
    _$trueWordAtom.reportRead();
    return super.trueWord;
  }

  @override
  set trueWord(String value) {
    _$trueWordAtom.reportWrite(value, super.trueWord, () {
      super.trueWord = value;
    });
  }

  @override
  String toString() {
    return '''
trueWord: ${trueWord}
    ''';
  }
}
