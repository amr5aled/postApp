import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../repositories/post_repository.dart';

class DeletePostUsesCases {
  final PostRepositories postRepositories;

  DeletePostUsesCases(this.postRepositories);
  Future<Either<Failure, Unit>> call(int postId) async {
    return await postRepositories.deletePost(postId);
  }
}
