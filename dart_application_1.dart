import 'dart:io';

void main() {
  while (true) {
    print('Enter first number (or type "exit" to quit):');
    String? input1 = stdin.readLineSync();

    if (input1 == null || input1.toLowerCase() == 'exit') {
      print('Goodbye!');
      break;
    }

    double? num1 = double.tryParse(input1);
    if (num1 == null) {
      print('Invalid input. Please enter a valid number.');
      continue;
    }

    print('Enter an operator (+, -, *, /):');
    String? operator = stdin.readLineSync();

    if (operator == null || !['+', '-', '*', '/'].contains(operator)) {
      print('Invalid operator. Please enter one of +, -, *, /.');
      continue;
    }

    print('Enter second number:');
    String? input2 = stdin.readLineSync();
    double? num2 = double.tryParse(input2!);

    if (num2 == null) {
      print('Invalid input. Please enter a valid number.');
      continue;
    }

    double result;
    switch (operator) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '*':
        result = num1 * num2;
        break;
      case '/':
        if (num2 == 0) {
          print('Error: Division by zero is not allowed.');
          continue;
        }
        result = num1 / num2;
        break;
      default:
        print('Unexpected error.');
        continue;
    }

    print('Result: $num1 $operator $num2 = $result');

  }
}

