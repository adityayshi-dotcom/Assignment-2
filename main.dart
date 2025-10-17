import 'dart:io';

void main() {
  // Ask the user to enter a character
  stdout.write("Enter a single alphabet character: ");
  String? input = stdin.readLineSync();

  // Check if input is valid (not null and only one character)
  if (input == null || input.length != 1 || !RegExp(r'^[a-zA-Z]$').hasMatch(input)) {
    print("Invalid input. Please enter a single alphabet character.");
    return;
  }

  // Convert input to lowercase for simplicity
  String char = input.toLowerCase();

  // Check if the character is a vowel
  if ('aeiou'.contains(char)) {
    print("The character 'input' is a vowel.");
  } else {
    print("The character 'input' is a consonant.");
  }
}