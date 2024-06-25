void outer(String name, String id) {
  String inner() {
    List<String> nameParts = name.split(' ');
    String firstName = nameParts[0];
    String lastName = nameParts[1];
    String initial = lastName[0] + '.';
    return 'Hello Agent $initial$firstName your id is $id';
  }

  print(inner());
}