import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'button_event.dart';
part 'button_state.dart';

class ButtonBloc extends Bloc<ButtonEvent, ButtonState> {
  ButtonBloc() : super(ButtonInitial()) {
    on<ButtonEvent>((event, emit) {
      if (event is GreenEvent) {
        emit(GreenState());
      }
      if (event is RedEvent) {
        emit(RedState());
      }

      if (event is BlueEvent) {
        emit(BlueState());
      }
    });
  }
}
