import 'dart:io';

void main(List <String> arguments) {
  bool validNumber = false;
  while (validNumber == false) {
    print("Skrifaðu símanúmerið þitt");
    String phoneNumber = stdin.readLineSync().toString();
    print("Þú skrifaðir $phoneNumber");
    if(phoneNumber.contains("+354")){
      phoneNumber = phoneNumber.replaceAll("+354", "");
      print("Ekki setja landskóða,til dæmis +354, á undan símanúmeri.");
    }
    if (phoneNumber.length == 8) {
      print("Ekki hafa bil eða bandstrik milli stafa.");
      phoneNumber = phoneNumber.replaceAll("-", "");
      phoneNumber = phoneNumber.replaceAll(" ", "");
    }
    print("$phoneNumber, Ekki slá inn bókstafi í þetta bil.");
    int? phoneNumberStorage = int.tryParse(phoneNumber);
    if(phoneNumber.length == 7 && phoneNumberStorage is int) {
      print("Þetta símanúmer er gilt og af réttri lengd.");
      if (phoneNumber[0] != "1") {
        print("Þetta símanúmer er gilt.");
        validNumber = true;
      }
      print("Gild símanúmer byrja ekki á 1.");
    }
  }
}
