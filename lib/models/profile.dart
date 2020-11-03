class Profile {
  Profile({
    this.id,
    this.img,
    this.bio,
    this.user,
  });

  int id;
  String img;
  String bio;
  int user;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        id: json["id"],
        img: json["img"],
        bio: json["bio"],
        user: json["user"],
      );
}
