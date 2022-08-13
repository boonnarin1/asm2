import 'dart:io';
import 'dart:math';

class Game{
  int answer = 0;
  Game({int? maxRandom=100}){
    var r = Random();
    answer = r.nextInt(maxRandom!)+1;

  }

  int doGuess(int num){
    if(num>answer){
      print('║▸ $num is Too high ');
      print('╟───────────────────────────────────────────');
      return 0;
    }else if(num<answer){
      print('║▸ $num is Too low ');
      print('╟───────────────────────────────────────────');
      return 0;
    }else{
      stdout.write('║▸ $num is Correct, ');
      return 1;
    }
  }
}