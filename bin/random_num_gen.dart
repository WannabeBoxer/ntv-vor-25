import 'dart:math';
import 'dart:io';
void main(List<String> arguments) {
  print("Hæ! Viltu koma í leik? Giskaðu rétt á tölu á milli 1 og 100 til að vinna!");
  print("Skrifaðu 'exit' til að hætta :D.");
  numberGuess();
}
void numberGuess() {
  //Þessar línur búa til tölur af tilviljun.
  final random = Random();
  final randomNum = random.nextInt(100) + 1;

  int totalGuesses = 0;

  //Hérna tekur kóðinn við svörum og vinnur úr þeim,
  while (true) {
    stdout.write("Skrifaðu hvað þú giskar: ");
    String userGuess = stdin.readLineSync() ?? '0';

    if (userGuess.toLowerCase() == "exit") {
      print("Allt í lagi, bless bless 🖐️.");
      print("Þú getur giskað $totalGuesses sinnum.");
    } else if (userGuess == '0') {
      print("Ekki alveg rétt elskan, reyndu aftur.");
      continue;
    } else if (int.parse(userGuess) > 100) {
      print("Of hátt! Veldu tölu á milli 1 og 100.");
      continue;
    }

    //Hérna koma viðbrögð við gildum giskum.
    if (int.parse(userGuess) == randomNum) {
      totalGuesses += 1;
      print("Það er RÉTT hjá þér elskan! Þú Vinnur!");
      print("Samtals gisk: $totalGuesses.");
      break;
    } else if (int.parse(userGuess) > randomNum) {
      totalGuesses += 1;
      print("Of hátt...");
      continue;
    } else {
      totalGuesses += 1;
      print("Of lágt...");
      continue;
    }
  }
}

