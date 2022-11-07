import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/post.dart';
import '../repositories/post_repository.dart';

class GetPostUsesCases {
  final PostRepositories postRepositories;

  GetPostUsesCases(this.postRepositories);
  Future<Either<Failure, List<Posts>>> call() async {
    return await postRepositories.getPosts();
  }
}
