import 'dart:io';
void main(List <String> arguments) {
  /*int personAge = 14;
  int driverLicenceAge = 17;
  bool doesPersonHaveDriversLicence = false;
  print(personAge);
  if (personAge >= driverLicenceAge && doesPersonHaveDriversLicence == true){
    print("Þú mátt keyra.");
  } else if(personAge >= driverLicenceAge && doesPersonHaveDriversLicence == false){
    print("Þú mátt hringja í ökukennara og byrja að læra að keyra.");
  } else {
    print("Takt þú strætó.");
  }

  if(!(5!>7)) {
    print("This is true");
  }*/

 bool
  }

  String myPassword = "MasterOfTheWorld123";
  String username = "admin";

  print("Enter your username");
  String loginUser = stdin.readLineSync().toString();
  print("Enter your password");
  String loginPassword = stdin.readLineSync().toString();

  if (loginUser.toLowerCase() == username && loginPassword == myPassword) {
    print("You are in. Welcome to the Jungle");
  } else {
    print("Username or password is incorrect");
  }
}