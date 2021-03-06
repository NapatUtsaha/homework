import 'dart:math';

class Game {
  static const defaultMaxRandom = 100;
  int? _answer;
  int _guessCount = 0;
  static final  List<int> guessCountList = [];

  Game({int MaxRandom = defaultMaxRandom}) {
    var r = Random();
    _answer = r.nextInt(MaxRandom)+1;
  }
  int get guessCount {
    return _guessCount;

  }
  void addCountList(){
    guessCountList.add(_guessCount);

  }

  int doGuess(int num) {
    _guessCount++;
    if (num > _answer!) {
      return 1;
    } else if (num < _answer!) {
      return -1;
    } else {
      return 0;
    }
  }
}
