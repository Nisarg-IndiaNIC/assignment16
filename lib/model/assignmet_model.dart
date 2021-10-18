class Assignment {
  Assignment({
    this.firstname,
    this.lastname,
    this.region,
    this.country,
    this.bio,
    this.profilepic,
    this.post,
    this.followers,
    this.following,
  });
  String? firstname;
  String? lastname;
  String? region;
  String? country;
  String? bio;
  String? profilepic;
  int? post;
  int? followers;
  int? following;

  factory Assignment.fromJson(Map<String, dynamic> parsedJson) {
    return Assignment(
        firstname: parsedJson["firstname"],
        lastname: parsedJson["lastname"],
        region: parsedJson["region"],
        country: parsedJson["country"],
        bio: parsedJson["bio"],
        profilepic: parsedJson["profilepic"],
        post: parsedJson["post"],
        followers: parsedJson["followers"],
        following: parsedJson["following"]);
  }
}
