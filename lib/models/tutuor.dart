class Tutor {
  String name;
  String proPic;
  String subject;
  String grade;
  String price;

  Tutor(
      {required this.name,
      required this.proPic,
      required this.subject,
      required this.grade,
      required this.price});

  static List<Tutor> getAllTutor() {
    return [
      Tutor(name: "John", proPic:"assets/images/boy1.png", subject: "english", grade: "7-8", price: "200"),
      Tutor(name: "John", proPic:"assets/images/boy1.png", subject: "english", grade: "7-8", price: "200"),
      Tutor(name: "John", proPic:"assets/images/boy1.png", subject: "english", grade: "7-8", price: "200"),
      Tutor(name: "John", proPic:"assets/images/boy1.png", subject: "english", grade: "7-8", price: "200"),
      Tutor(name: "John", proPic:"assets/images/boy1.png", subject: "english", grade: "7-8", price: "200"),
    ];
  }
}
