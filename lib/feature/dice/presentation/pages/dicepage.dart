import 'dart:math';

import 'package:dice_bloc/feature/dice/presentation/bloc/dice_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DiceGame extends StatefulWidget {
  const DiceGame({Key? key}) : super(key: key);

  @override
  State<DiceGame> createState() => _DiceGameState();
}

class _DiceGameState extends State<DiceGame> {
  final DiceBloc diceBloc = DiceBloc();
  int ld = Random().nextInt(6) + 1;
  int rd = Random().nextInt(6) + 1;

  @override
  void initState() {
    // TODO: implement initState
    diceBloc.add(DiceInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dice Game'),
        ),
        body: BlocConsumer<DiceBloc, DiceActionState>(
          bloc: diceBloc,
          listener: (context, state) {},
          builder: (BuildContext context, state) {
            return Container(
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextButton(
                              onPressed: () {
                                diceBloc.add(ClickDiceEvent());
                              },
                              child: Image.asset(
                                  'lib/feature/dice/Data/image/dice${state.num}.png')),
                        )),
                    Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: TextButton(
                              onPressed: () {
                                diceBloc.add(ClickDiceEvent());
                                print(state.num);
                              },
                              child: Image.asset(
                                  'lib/feature/dice/Data/image/dice${state.num}.png')),
                        )),
                  ],
                ),
              ),
            );
          }
          //   switch (state.runtimeType) {
          //     case DiceInitial:
          //       final change = state as DiceInitial;
          //       return Ui(BuildContext, 1, 2);
          //     case DiceChangebyClickingActionstate:
          //       final roll = state as DiceChangebyClickingActionstate;
          //       return Ui(BuildContext, Random().nextInt(6) + 1,
          //           Random().nextInt(6) + 1);
          //
          //     default:
          //   }
          //   return SizedBox();
          // },
        ));
  }

  // Widget Ui(BuildContext, int RandomNumber1, int Random) {
  //   // return Container(
  //   //   child: Center(
  //   //     child: Row(
  //   //       children: [
  //   //         Expanded(
  //   //             child: Padding(
  //   //           padding: const EdgeInsets.all(6.0),
  //   //           child: TextButton(
  //   //               onPressed: () {
  //   //                 diceBloc.add(ClickDiceEvent());
  //   //               },
  //   //               child: Image.asset(
  //   //                   'lib/feature/dice/Data/image/dice$RandomNumber1.png')),
  //   //         )),
  //   //         Expanded(
  //   //             child: Padding(
  //   //           padding: const EdgeInsets.all(6.0),
  //   //           child: TextButton(
  //   //               onPressed: () {
  //   //                 diceBloc.add(ClickDiceEvent());
  //   //               },
  //   //               child: Image.asset(
  //   //                   'lib/feature/dice/Data/image/dice$Random.png')),
  //   //         )),
  //   //       ],
  //   //     ),
  //   //   ),
  //   // );
  // }
}
