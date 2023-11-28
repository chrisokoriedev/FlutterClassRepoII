class StudentDetail {
  final String? name;
  final String className;
  final String favSport;

  StudentDetail({
    required this.className,
    required this.favSport,
    this.name,
  });
}

void main() {
  var p = StudentDetail(className: '', favSport: '');
  print(p.name);
}
