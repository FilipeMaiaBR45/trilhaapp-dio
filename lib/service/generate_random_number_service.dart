import 'dart:math';

class GenerateNumberRandomService {
  static int generateRandomNumber(int max) {
    Random numberRandom = Random();

    return numberRandom.nextInt(max);
  }
}
