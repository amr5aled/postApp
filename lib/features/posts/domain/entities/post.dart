// {
//     "userId": 1,
//     "id": 1,
//     "title": "sunt aut facere repellat provident occaecati excepturi optio reprehenderit",
//     "body": "quia et suscipit\nsuscipit recusandae consequuntur expedita et cum\nreprehenderit molestiae ut ut quas totam\nnostrum rerum est autem sunt rem eveniet architecto"
//   },
import 'package:equatable/equatable.dart';

class Posts extends Equatable {
  final String? postId;
  final String? title;
  final String? body;

  Posts({this.postId, this.title, this.body});

  @override
  List<Object?> get props => [postId, title, body];
}
