class Tutor {
  String name;
  String about;
  String proPic;
  String subject;
  String grade;
  String price;
  String rating;

  Tutor(
      {required this.name,
      required this.about,
      required this.proPic,
      required this.subject,
      required this.grade,
      required this.price,
      required this.rating});

  static List<Tutor> getAllTutor() {
    return [
      Tutor(name: "John",about: "Well, I’m Marry, 24 years old, fresh from college, and extremely excited about finally interviewing for my first real teaching job. I love being around children, and feel a big responsibility as someone who’s supposed to be not only a skilled teacher, but also a good role model for their pupils. My favorite subjects to teach are reading and writing, but I do not particularly dislike teaching any subject–they are all important after all. In my free time I enjoy handicrafts, and having a discussion with like-minded people about anything related to elementary teaching." ,proPic:"assets/images/boy1.png", subject: "English", grade: "7-8", price: "200",rating: "4.3",),
      Tutor(name: "John",about: "Well, I’m Marry, 24 years old, fresh from college, and extremely excited about finally interviewing for my first real teaching job. I love being around children, and feel a big responsibility as someone who’s supposed to be not only a skilled teacher, but also a good role model for their pupils. My favorite subjects to teach are reading and writing, but I do not particularly dislike teaching any subject–they are all important after all. In my free time I enjoy handicrafts, and having a discussion with like-minded people about anything related to elementary teaching." ,proPic:"assets/images/boy1.png", subject: "english", grade: "7-8", price: "200",rating: "4.3",),
      Tutor(name: "John",about: "Well, I’m Marry, 24 years old, fresh from college, and extremely excited about finally interviewing for my first real teaching job. I love being around children, and feel a big responsibility as someone who’s supposed to be not only a skilled teacher, but also a good role model for their pupils. My favorite subjects to teach are reading and writing, but I do not particularly dislike teaching any subject–they are all important after all. In my free time I enjoy handicrafts, and having a discussion with like-minded people about anything related to elementary teaching." ,proPic:"assets/images/boy1.png", subject: "english", grade: "7-8", price: "200",rating: "4.3",),
      Tutor(name: "John",about: "Well, I’m Marry, 24 years old, fresh from college, and extremely excited about finally interviewing for my first real teaching job. I love being around children, and feel a big responsibility as someone who’s supposed to be not only a skilled teacher, but also a good role model for their pupils. My favorite subjects to teach are reading and writing, but I do not particularly dislike teaching any subject–they are all important after all. In my free time I enjoy handicrafts, and having a discussion with like-minded people about anything related to elementary teaching." ,proPic:"assets/images/boy1.png", subject: "english", grade: "7-8", price: "200",rating: "4.3",),
      Tutor(name: "John",about: "Well, I’m Marry, 24 years old, fresh from college, and extremely excited about finally interviewing for my first real teaching job. I love being around children, and feel a big responsibility as someone who’s supposed to be not only a skilled teacher, but also a good role model for their pupils. My favorite subjects to teach are reading and writing, but I do not particularly dislike teaching any subject–they are all important after all. In my free time I enjoy handicrafts, and having a discussion with like-minded people about anything related to elementary teaching." ,proPic:"assets/images/boy1.png", subject: "english", grade: "7-8", price: "200",rating: "4.3",),
    ];
  }
}
