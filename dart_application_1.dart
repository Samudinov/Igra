import 'dart:io';

import 'package:dart_application_1/dart_application_1.dart' as dart_application_1;

void main() {
urPlayer();
}
  
int urPlayer() {
    print('Вы начинаете первым, выбирайте число!');
    int count = 0;
    int n = int.parse(stdin.readLineSync()!);
    int a = 50;
    int b = 50;
    late int choose;
    do {
      b = (b / 2).round();
      print('Это $a? \n1) Больше? \n2) Меньше \n3) Оно!');
      choose = int.parse(stdin.readLineSync()!);
      if (choose == 1) {
        a += b;
      } else if (choose == 2) {
        a -= b;
      }
      count++;
    } while (choose != 3);
    print('Вот оно!');
    return count;
  }


