import 'dart:io';

void displayMenu(Map<String, int> menu) {
  print("\n==================== Menu ====================");
  menu.forEach((item, price) {
    print("$item".padRight(20) + "Rs $price");
  });
  print("=============================================\n");
}

void main() {
  Map<String, int> menu = {
    "Classic burger": 5,
    "Cheeseburger" : 6,
    "Veggie burger" : 4,
    "Bacon burger" : 7,
  };
  while (true) {
    print(
        "Halló, verið velkomin til Hamborgarabúllu Steinars! Ertu tilbúin/n til að panta?");
    print("1. Sjá Matseðil");
    print("2. Bæta við/taka úr pöntun");
    print("3. Loka");
    print("Sláðu inn viðeigandi tölu:");

    String? choice = stdin.readLineSync();

    if (choice == "1") {
      displayMenu(menu);
      print("Ýttu á hvaða takka sem er til að fara aftur á meginviðmótið...");
      stdin.readLineSync();
    } else if (choice == "2") {
      int totalCost = 0;
      List<String> orderSummary = [];

      while (true) {
        print(
            "Sláðu inn heiti þess sem þú ætlar að panta(eða 'done' þegar þú ert búin/n):");
        String? item = stdin.readLineSync();

        if (item == null || item.toLowerCase() == "done") {
          break;
        }

        if (menu.containsKey(item)) {
          print("Sláðu inn hversu marga þú vilt (settu mínus fyrir framan töluna ef þú vilt taka út):");
          String? quantityInput = stdin.readLineSync();
          int? quantity = int.tryParse(quantityInput ?? "");

          if (quantity != null) {
            totalCost += menu[item]! * quantity;
            orderSummary.add(
                "$quantity x $item = Rs ${menu[item]! * quantity}");
            print("Bætti við $quantity x $item. Samtals: Rs $totalCost");
          } else {
            print("Vitlaust, passaðu að skrifa heitið á pöntuninni rétt.");
          }
        } else {
          print(
              "Máltíð ekki fundin. Gjörið svo vel að velja aðeins af matseðlinum.");
        }
      }

      print("\n============== Þín Pöntun ==============");
      for (var order in orderSummary) {
        print(order);
      }
      print("------------------------------------------");
      print("Pöntun: Rs $totalCost");
      print("==========================================");
      /*
    } else if (choice == "3") {
      int totalCost = 0;
      List<String> orderSummary = [];
      //þetta er pínu í fokki
      while (true) {
        print(
            "Sláðu inn heiti þess sem þú ætlar að taka út(eða 'done' þegar þú ert búin/n):");
        String? item = stdin.readLineSync();
        if (item == null || item.toLowerCase() == "done") {
          break;
        }
        if (menu.containsKey(item)) {
          print("Sláðu inn hversu marga þú vilt taka burt:");
          String? quantityInput = stdin.readLineSync();
          int? quantity = int.tryParse(quantityInput ?? "");
          if (quantity != null && quantity > 0) {
            totalCost -= menu[item]! * quantity;
            orderSummary.add(
                "$quantity x $item = Rs ${menu[item]! * quantity}");
            print("Tók út $quantity x $item. Samtals: Rs $totalCost");
          } else {
            print(
                "Máltíð ekki fundin. Gjörið svo vel að velja aðeins af matseðlinum.");
          }
        }
      }*/
    } else if (choice == "3") {
      print("Takk fyrir heimsóknina! Bless bless.");
      break;
    } else {
      print("Ólögmætur innsláttur. Gjörið svo vel að reyna aftur.");
    }
  }
}