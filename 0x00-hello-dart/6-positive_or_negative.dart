void main(List<String> args) {
  if (args.length != 1) {
    print('Usage: dart program.dart <number>');
    return;
  }

  String numberString = args[0];
  int number = int.parse(numberString);

  if (number > 0) {
    print('$number is positive');
  } else if (number == 0) {
    print('$number is zero');
  } else {
    print('$number is negative');
  }
}