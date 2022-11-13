import 'package:firebase_fire/features/posts/domain/entities/post.dart';

class PostModel extends Posts {
  PostModel({required super.postId, required super.title, required super.body});
  //named Constructor//
  factory PostModel.fromJson(Map json) {
    return PostModel(
        postId: json['id'], title: json['title'], body: json['body']);
  }
  Map<String, dynamic> toJson() => {
        "id": postId,
        "tirle": title,
        "body": body,
      };
}
