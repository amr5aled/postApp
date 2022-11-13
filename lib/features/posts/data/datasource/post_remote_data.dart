import 'package:dartz/dartz.dart';
import 'package:firebase_fire/features/posts/data/models/post_model.dart';

abstract class PostRemoteData {
  Future<Unit> deletePost(int id);
  Future<Unit> addPost(PostModel post);
  Future<Unit> updatePost(PostModel post);
  Future<List<PostModel>> getPosts();
}
class PostRemoteDataImpl with PostRemoteData
{
  @override
  Future<Unit> addPost(PostModel post) {
    // TODO: implement addPost
    throw UnimplementedError();
  }

  @override
  Future<Unit> deletePost(int id) {
    // TODO: implement deletePost
    throw UnimplementedError();
  }

  @override
  Future<List<PostModel>> getPosts() {
    // TODO: implement getPosts
    throw UnimplementedError();
  }

  @override
  Future<Unit> updatePost(PostModel post) {
    // TODO: implement updatePost
    throw UnimplementedError();
  }

}
