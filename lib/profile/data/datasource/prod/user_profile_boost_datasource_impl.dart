import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:zheeta/app/api/api_manager.dart';
import 'package:zheeta/app/common/storage/local_storage_impl.dart';
import 'package:zheeta/app/common/storage/storage_keys.dart';
import 'package:zheeta/authentication/domain/entity/types.dart';
import 'package:zheeta/profile/data/datasource/user_profile_boost_datasource.dart';
import 'package:zheeta/profile/data/request/create_profile_boost_request.dart';
import 'package:zheeta/profile/domain/entity/type.dart';

@prod
@LazySingleton(as: UserProfileBoostDataSource)
class UserProfileBoostDataSourceImpl implements UserProfileBoostDataSource {
  final ApiManager _apiManager;
  late final String? _authToken;

  UserProfileBoostDataSourceImpl(this._apiManager) {
    _getAuthToken();
  }

  _getAuthToken() async {
    _authToken = (await sessionManager.get(SessionManagerKeys.authToken)) as String?;
  }

  @override
  Future<Either<Error, MappedResponse>> createProfileBoost(CreateProfileBoostRequest request) async {
    final response = await _apiManager.postHttp('/profile-boost/create', request.toJson(), token: _authToken);
    if (response.success) {
      return Right(response.data);
    } else {
      return Left(response.message);
    }
  }

  @override
  Future<Either<Error, MappedResponse>> getBoostedProfileByAdmin(GetBoostedProfileByAdminRequest request) async {
    final response = await _apiManager.getHttp('/profile-boost/get-all-admin', token: _authToken);
    if (response.success) {
      return Right(response.data);
    } else {
      return Left(response.message);
    }
  }

  @override
  Future<Either<Error, MappedResponse>> getMatchedProfileBoost() async {
    final response = await _apiManager.getHttp('/profile-boost/get-matched', token: _authToken);
    if (response.success) {
      return Right(response.data);
    } else {
      return Left(response.message);
    }
  }
}