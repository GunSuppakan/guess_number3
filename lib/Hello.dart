import 'dart:io';
import 'game.dart';

void main() {
  var check = 0;
  var c = 0;
  var list1 = 0;
  var round = 0;
  List<int> myList = [];
  while (check == 0 && c == 0) {
    list1 += 1;
    int result = 0;
    stdout.write(" Enter a maximum number to  random : ");
    var input = stdin.readLineSync();
    var type = int.tryParse(input!);
    if (type == null) {
      type == 100;
    }
    var game = Game(maxRandom: type!);
    print('╔═══════════════════════════════════════════════════');
    print('║                   GUESS THE NUMBER');
    print('╟───────────────────────────────────────────────────');

    do {
      stdout.write("║ Guess the number between 1 and $type : ");
      var input = stdin.readLineSync();
      var guess = int.tryParse(input!);
      if (guess == null) {
        print('║ Plsease enter number only');
        continue;
      }
      result = game.getguess(guess);
      if (result == 3) {
        check = 1;
      }
    }
    while (result != 3 && c == 0);
    myList.add(game.i);
    print('╟───────────────────────────────────────────────────');
    print('║                   THE END');
    print('╚═══════════════════════════════════════════════════');
    round++;
    stdout.write("  Select (Y/N) to play next round : ");
    for(;;){
      var playagin = stdin.readLineSync();
      if (playagin == "Y" || playagin == 'y') {
        check = 0;
        c = 0;
        break;
      }
      else if (playagin == "N" || playagin == 'n') {
        c += 1;
        print("  You've played $round games");
        for(int i = 0; i < myList.length ; i++){
          int n = myList[i];
          int j = i + 1;
          print("  🚀  Game #$j: $n guesses");
        }
        break;
      }
      else {
        stdout.write("  Select (Y/N) to play next round : ");
        continue;
      }
    }
  }
}