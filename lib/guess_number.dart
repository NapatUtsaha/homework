// ignore_for_file: avoid_print

import 'dart:io';

import 'package:homework/game.dart';

void main() {
  while (true) {
    playGame();
    String? input;

    do {
      stdout.write('Play again? (Y/N): ');
      input = stdin.readLineSync();
    } while (input!.toLowerCase() != 'y' && input.toLowerCase() != 'n');

    if (input.toLowerCase() == 'n') break;
  }
  print('\n\nYou\' ve play ${Game.guessCountList.length} game');
  for(var i=0; i<Game.guessCountList.length;i++){
    print('Game #${i +1} : ${Game.guessCountList[i]} guess');
  }

  // end of program
}




void playGame() {
  int? maxRandom;

  do{
    stdout.write('\n Enter a maximum number to random: ' );
    var input = stdin.readLineSync();
    maxRandom = int.tryParse(input!);
  }while(maxRandom== null);

  var game = Game(MaxRandom: maxRandom);
  var isCorrect = false;

  print('╔════════════════════════════════════════');
  print('║            GUESS THE NUMBER            ');
  print('╟────────────────────────────────────────');

  do {
    stdout.write('║ Guess the number between 1 and $maxRandom : ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      continue;
    }

    var result = game.doGuess(guess);

    if (result == 1) {
      print('║ ➜ $guess is TOO HIGH! ▲');
      print('╟────────────────────────────────────────');
    } else if (result == -1) {
      print('║ ➜ $guess is TOO LOW! ▼');
      print('╟────────────────────────────────────────');
    } else if (result == 0) {
      print('║ ➜ $guess is CORRECT ❤, total guesses: ${game.guessCount}');
      print('╟────────────────────────────────────────');
      isCorrect = true;
      game.addCountList();
    }
  } while (!isCorrect);

  print('║                 THE END                ');
  print('╚════════════════════════════════════════');
}
