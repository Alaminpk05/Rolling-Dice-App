part of 'dice_bloc.dart';

@immutable
  abstract class DiceState {
}
class DiceActionState extends DiceState {
  DiceActionState({ required this.num});
   int num=Random().nextInt(6)+1;
}

class DiceInitial extends DiceActionState {
  DiceInitial():super(num: 1);
}
// class DiceChangebyClickingActionstate extends DiceState{
//
// }

