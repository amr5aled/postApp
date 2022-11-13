import 'package:firebase_fire/core/error/exception.dart';
import 'package:firebase_fire/features/posts/data/datasource/post_local_data.dart';
import 'package:firebase_fire/features/posts/data/datasource/post_remote_data.dart';
import 'package:firebase_fire/features/posts/data/models/post_model.dart';
import 'package:firebase_fire/features/posts/domain/entities/post.dart';
import 'package:firebase_fire/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_fire/features/posts/domain/repositories/post_repository.dart';

import '../../../../core/network/network_info.dart';

typedef Future<Unit>DeleteOrUpdateOrAdd();

///PostRepositoriesImpl....datasource.....apiService
class PostRepositoriesImpl implements PostRepositories {
  final PostRemoteData postRemoteData;
  final PostLocalData postLocalData;
  final NetworkInfo networkInfo;

  PostRepositoriesImpl(
      this.postRemoteData, this.postLocalData, this.networkInfo);
  @override
  Future<Either<Failure, Unit>> addPost(Posts post) async {
    PostModel posts =
        PostModel(postId: post.postId, title: post.title, body: post.body);
    return getActionCrud(() async {
      return await postRemoteData.addPost(posts);
    });
  }

  @override
  Future<Either<Failure, Unit>> deletePost(int postId) async {
    return getActionCrud(() async {
      return await postRemoteData.deletePost(postId);
    });
  }

  @override
  Future<Either<Failure, List<Posts>>> getPosts() async {
    if (await networkInfo.getConnection()) {
      try {
        final remotePosts = await postRemoteData.getPosts();
        await postLocalData.cachPost(remotePosts);
        return Right(remotePosts);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      try {
        final localPosts = await postLocalData.getCachePosts();

        return Right(localPosts);
      } on ServerException {
        return Left(EmptyCacheFailure());
      }
    }
  }

  @override
  Future<Either<Failure, Unit>> updatePost(Posts post) async {
    PostModel posts =
        PostModel(postId: post.postId, title: post.title, body: post.body);
    return getActionCrud(() async {
      return await postRemoteData.updatePost(posts);
    });
  }

  getActionCrud(DeleteOrUpdateOrAdd action) async {
    if (await networkInfo.getConnection()) {
      try {
        action;

        return const Right(unit);
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(OfflineFailure());
    }
  }
}
/// bloc ....usescases...repositories...implement resposotries...remote/local ....apisesvice and local data storage 
