import 'dart:io';
void main(List<String> arguments) {
  //1. Hér prentast út Hello og nafnið mitt á tveimur aðskildum línum.
  String greeting = "Hello";
  String firstName = "Steinar";
  print("$greeting");
  print("$firstName");
  //2. Hér prentast út summan af tveimur tölum.
  int number1 = 8;
  int number2 = 9;
  int result = number1 + number2;
  print(result);
  //3. Hér prentast út deiling af tveimur tölum.
  int number3 = 27;
  int number4 = 3;
  double result2 = number3 / number4;
  print(result2);
  //4. Hér prentast út reikningsdæmin í verkefninu
  //1.
  int number5 = -1;
  int number6 = 5;
  int result3 = number5 + number6 * number6;
  print(result3);
  //2.
  int number7 = 25;
  int number8 = 4;
  int number9 = 5;
  int result4 = (number5 + number9) % number6;
  print(result4);
  //3.
  int number10 = 8;
  int number11 = 6;
  int number12 = 4;
  int number13 = 2;
  double result5 = number10 + number11 * number12 / number13;
  print(result5);
  //4.
  int number14 = 2;
  int number15 = 15;
  int number16 = 6;
  int number17 = 1;
  int number18 = 7;
  int number19 = 2;
  double result6 = number14 + number15 / number16 * number17 - number18 % number19;
  print(result6);
}