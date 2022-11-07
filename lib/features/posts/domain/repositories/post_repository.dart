import 'package:dartz/dartz.dart';
import 'package:firebase_fire/core/error/failure.dart';
import 'package:firebase_fire/features/posts/domain/entities/post.dart';

abstract class PostRepositories {
  //add...edit...remove..get
  Future<Either<Failure, Unit>> deletePost(int id);
  Future<Either<Failure, Unit>> addPost(Posts post);
  Future<Either<Failure, Unit>> updatePost(Posts post);
  Future<Either<Failure, List<Posts>>> getPosts();
}
