import 'package:ntv_vor_25/methods.dart';

void main() {
  List<String> employees = getNamesList();
  for (String name in employees) {
    String username = createUserName(name);
  }
}
class employee {
  int id;
  String name;
  int age;
  String username;
  employee()
}

String createUserName(String tempName) {
  List splitName = tempName.split(" ");
  String firstName = splitName[0];
  String lastName = splitName[1];
  String username = firstName + lastName.substring(0,3);
  username = removeIcelandicLetters(username);
  username =
  print(firstName);
  print(lastName);
  return input;
}