import 'dart:io';

void main() {
  bool myLightSwitch = true;
  while(true) {
    myLightSwitch = turnOnOrOff(myLightSwitch);
  }
  turnOnOrOff(true);
  String onOrOff = "";
  if (myLightSwitch == true) {
    onOrOff = "ON!";
  } else {
    onOrOff = "OFF!";
  }
  print(onOrOff);
}

bool turnOnOrOff(bool lightSwitch) {
  return !lightSwitch;
  bool result;
  if (lightSwitch == true) {
    result = false;
  } else {
    result = true;
  }
  return result;
}

void displayLightBulbStatus (bool lightSwitch) {
  if (lightSwitch == true) {
    print("light is ON");
  } else {
    print ("light is OFF");
  }
}