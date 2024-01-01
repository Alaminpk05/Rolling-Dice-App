part of 'dice_bloc.dart';

@immutable
abstract class DiceEvent {}
class DiceInitialEvent extends DiceEvent{}
class ClickDiceEvent extends DiceEvent{

}
