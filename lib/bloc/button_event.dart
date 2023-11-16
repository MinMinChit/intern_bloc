part of 'button_bloc.dart';

@immutable
abstract class ButtonEvent {}

class GreenEvent extends ButtonEvent {}

class RedEvent extends ButtonEvent {}

class BlueEvent extends ButtonEvent {}
