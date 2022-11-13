import 'package:dartz/dartz.dart';

import '../models/post_model.dart';

abstract class PostLocalData {
  Future<List<PostModel>> getCachePosts();
  Future<Unit> cachPost(List<PostModel>posts);
}
class PostLocalDataImpl with PostLocalData
{
  @override
  Future<Unit> cachPost(List<PostModel>posts) {
    // TODO: implement cachPost
    throw UnimplementedError();
  }

  @override
  Future<List<PostModel>> getCachePosts() {
    // TODO: implement getCachePosts
    throw UnimplementedError();
  }

}