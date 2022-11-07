import 'package:dartz/dartz.dart';
import 'package:firebase_fire/features/posts/domain/entities/post.dart';

import '../../../../core/error/failure.dart';
import '../repositories/post_repository.dart';

class AddPostUsesCases {
  final PostRepositories postRepositories;

  AddPostUsesCases(this.postRepositories);
  Future<Either<Failure, Unit>> call(Posts post) async {
    return await postRepositories.addPost(post);
  }
}
