import 'dart:convert';

ResponseData responseDataFromJson(String str) =>
    ResponseData.fromJson(json.decode(str));

String responseDataToJson(ResponseData data) => json.encode(data.toJson());

class ResponseData {
  ResponseData({
    required this.user,
    required this.posts,
  });

  User user;
  List<Post> posts;

  factory ResponseData.fromJson(Map<String, dynamic> json) => ResponseData(
        user: User.fromJson(json["user"]),
        posts: List<Post>.from(json["posts"].map((x) => Post.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "user": user.toJson(),
        "posts": List<dynamic>.from(posts.map((x) => x.toJson())),
      };

  ResponseData copyWith(ResponseData from) {
    return ResponseData(
        user: User(
            likes: from.user.likes,
            sid: from.user.sid,
            following: from.user.following,
            loginName: from.user.loginName,
            name: from.user.name,
            avatar: from.user.avatar,
            followers: from.user.followers),
        posts: List.from(from.posts));
  }

  static empty() {
    return ResponseData(
        user: User(
            avatar: '',
            followers: 0,
            name: '',
            loginName: '',
            following: 0,
            sid: '',
            likes: 0),
        posts: []);
  }

  @override
  String toString() {
    return "(LoginName: ${user.loginName}, PostsCount: ${posts.length}, RequestDate: ${DateTime.now().toString()})";
  }
}

class Post {
  Post({
    required this.cover,
    required this.animatedCover,
    required this.awemeId,
  });

  String cover;
  String animatedCover;
  dynamic awemeId;

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        cover: json["cover"],
        animatedCover: json["animated_cover"],
        awemeId: json["aweme_id"],
      );

  Map<String, dynamic> toJson() => {
        "cover": cover,
        "animated_cover": animatedCover,
        "aweme_id": awemeId,
      };
}

class User {
  User({
    required this.loginName,
    required this.name,
    required this.followers,
    required this.following,
    required this.likes,
    required this.avatar,
    required this.sid,
  });

  String loginName;
  String name;
  int followers;
  int following;
  int likes;
  String avatar;
  String sid;

  factory User.fromJson(Map<String, dynamic> json) => User(
        loginName: json["login_name"],
        name: json["name"],
        followers: json["followers"],
        following: json["following"],
        likes: json["likes"],
        avatar: json["avatar"],
        sid: json["sid"],
      );

  Map<String, dynamic> toJson() => {
        "login_name": loginName,
        "name": name,
        "followers": followers,
        "following": following,
        "likes": likes,
        "avatar": avatar,
        "sid": sid,
      };
}
