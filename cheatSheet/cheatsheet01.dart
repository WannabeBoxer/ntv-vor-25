void main(List<String> arguments){
  String firstName = "Steinar";
  String lastName = "Ingolfsson";
  print("Hi $firstName $lastName");
  //Hér prentar hún út Steinar Ingólfsson
  String fullName = firstName + " " + lastName;
  print("Hi $fullName");
  String SSN = "140898-3259";
  String fixSSN = SSN.replaceAll("-","");
  //replaceALL er notað til þess að taka í burtu fyrri hlutann ss "-"
  int ssnLength = fixSSN.length;
  print(ssnLength);
  String message = "Hello World";
  String fixMessage = message.replaceAll("World", "NTV");
  print(fixMessage.toUpperCase());

  String birthDate = SSN.substring(0,6);
  print(birthDate);
  String email = "SteiNarING@NtV.is";
  print(email.toLowerCase());
}