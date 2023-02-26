import 'dart:io';

main() {
  gameTitle();
  levelOneTitle();
}

makeSpace(int spaces) {
  for (int index = 0; index < spaces; index++) {
    print(" ");
  }
}

gameTitle() {
  makeSpace(2);
  print("###### Escape School ######");
  makeSpace(2);
}

levelOneTitle() {
  print("level 1");
  printToday();
  print("You are sitting on your desk,");
  print("and the teacher left the class,");
  print("with on of your class mates.");
  levelOne();
}

levelOne() {
  print("do your want to 1#(escape), 2#(fight), 3#(cheet):");
  String option1 = stdin.readLineSync()!;
  switch (option1) {
    case "escape":
    case "1":
      win();
      levelTwo();
      break;
    case "fight":
    case "2":
      lose();
      break;
    case "cheet":
    case "3":
      lose();
      break;
    case "q":
    case "Q":
      quitGame();
      break;
    default:
      makeSpace(2);
      levelOne();
      break;
  }

  makeSpace(2);
}


levelTwoTitle(){
  print("level 2");
  makeSpace(2);
  levelTwo();
  }
  levelTwo() {
    print("Do you want to go to the canteen and steal a drink?");
     print("do your want to 1#(Buying), 2#(steal):");
  String option1 = stdin.readLineSync()!;
  switch (option1) {
    case "Buying":
    case "1":
       lose();
      break;
    case "steal":
    case "2":
     win();
     levelThree();
      break;
    case "q":
    case "Q":
      quitGame();
      break;
    default:
      makeSpace(2);
      levelTwo();
      break;
  }

  makeSpace(2);
}

levelThree() {
  print("level 3");
  makeSpace(2);
 levelThreeitle();
}
levelThreeitle(){
print("Do you want to run away from school?");
     print("do your want to 1#(Back to class), 2#(escape):");
  String option1 = stdin.readLineSync()!;
  switch (option1) {
    case "Back to class":
    case "1":
       lose();
       quitGame();
      break;
    case "escape ":
    case "2":
     win();
     quitGame();
      break;
    case "q":
    case "Q":
      quitGame();
      break;
    default:
      makeSpace(2);
      levelThree();
      break;
  }

  makeSpace(2);

}

endGame() {
  makeSpace(2);
  print("######### The End #########");
  makeSpace(2);
}

printToday() {
  print(
      "${DateTime.now().day} / ${DateTime.now().month} / ${DateTime.now().year}");
}

win() {
  makeSpace(1);
  print("🎉🎉🎉🎉🎉🎉🎉🎉");
   print("🎉🎉🎉🎉🎉🎉🎉🎉");
  makeSpace(1);
}

lose() {
  makeSpace(1);
  print("🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️");
  print("🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️🏴‍☠️");
  makeSpace(1);
  endGame();
}

quitGame() {
  endGame();
  exit(0);
}
