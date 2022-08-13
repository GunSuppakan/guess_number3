import 'dart:math';
class Game{
  var answer = 0; //field
  var  i = 0;
  var ans = 0;
  Game({int maxRandom = 100}){
    var r = Random();
    answer = r.nextInt(maxRandom) + 1; //
    print(' Answer is $answer');
  }
  int getguess(int number_guess){
    i += 1;
    if(number_guess > answer){
      print('║   ➜ $number_guess is TOO HIGH! ▲');
      print('╟───────────────────────────────────────────────────');
      return 0;
    }
    else if(number_guess < answer){
      print('║   ➜ $number_guess is TOO LOW! ▼');
      print('╟───────────────────────────────────────────────────');
      return 0;
    }
    else{
      print("║ ➜ $number_guess is correct ❤, total guesses: $i");
      return 3;
    }
  }
}