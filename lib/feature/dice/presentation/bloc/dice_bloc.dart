import 'dart:async';
import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'dice_event.dart';
part 'dice_state.dart';

class DiceBloc extends Bloc<DiceEvent, DiceActionState> {
  DiceBloc() : super(DiceInitial()) {
     on<DiceInitialEvent>(diceInitialEvent);
    on<ClickDiceEvent>(clickDiceEvent);
  }




  diceInitialEvent(DiceInitialEvent event, Emitter<DiceState> emit) {
    emit(DiceInitial());
  }

  FutureOr<void> clickDiceEvent(ClickDiceEvent event, Emitter<DiceState> emit) {

  emit(DiceActionState(num:Random().nextInt(6)+1));
  print(num);
  }
}

