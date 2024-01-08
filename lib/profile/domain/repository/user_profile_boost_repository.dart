import 'package:zheeta/profile/data/request/create_profile_boost_request.dart';
import 'package:zheeta/profile/domain/entity/type.dart';

abstract class UserProfileBoostRepository {
  createProfileBoostRepo(CreateProfileBoostRequest request);
  getMatchedProfileBoostRepo();
  getBoostedProfileByAdminRepo(GetBoostedProfileByAdminRequest request);
}