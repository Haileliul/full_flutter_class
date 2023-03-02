import 'dart:io';

void main() {
  List names = ['haile', 'baye', 'Tamire', 'baye'];
  List? symb;

  var data = {
    'fname': "haile",
    'lname': "baye",
    'Age': 12,
    'Education': {
      'grade': 4,
      'department': "soft",
      'university': "Bahirdar University",
    }
  };

  print(data['Education']);
  // print(data['Education']['department']);
  int? a = data['Education']['grade'];
  print(a);
}
