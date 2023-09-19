// Функция, которая проверяет, делится ли первое число на второе нацело.
String checkDivision(int num1, int num2) =>
    num1 % num2 == 0 ? "Делится нацело" : "Не делится нацело";

// Функция, которая возвращает количество букв в строке.
int countLetters(String str) =>
    str.replaceAll(RegExp(r'[^a-zA-Zа-яА-Я]'), '').length;

// Функция, которая определяет тип значения (целое число, дробное число или строка).
String getType(dynamic value) => value is int
    ? "Целое число"
    : value is double
        ? "Дробное число"
        : "Строка";

// Функция, которая проверяет, является ли число простым.
bool isPrime(int num) {
  if (num <= 1) return false;
  for (int i = 2; i <= num / 2; i++) {
    if (num % i == 0) return false;
  }
  return true;
}

// Функция, которая возвращает сезон по номеру месяца.
String getSeason(int month) {
  switch (month) {
    case 1:
    case 2:
    case 12:
      return "Зима";
    case 3:
    case 4:
    case 5:
      return "Весна";
    case 6:
    case 7:
    case 8:
      return "Лето";
    case 9:
    case 10:
    case 11:
      return "Осень";
    default:
      return "Некорректный месяц";
  }
}

void main() {
  // Примеры использования функций:
  print(checkDivision(10, 2)); // Делится нацело
  print(countLetters("Hello, kalybekov!")); // 10
  print(getType("56")); // Целое число
  print(isPrime(5)); // true
  print(getSeason(8)); // Осень
}
