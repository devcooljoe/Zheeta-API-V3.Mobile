// Mocks generated by Mockito 5.4.4 from annotations
// in zheeta/test/mock/authentication/domain/repository/user_otp_repository.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:mockito/mockito.dart' as _i1;
import 'package:zheeta/authentication/data/request/verify_email_otp_request.dart'
    as _i4;
import 'package:zheeta/authentication/data/request/verify_phone_otp_request.dart'
    as _i3;
import 'package:zheeta/authentication/domain/repository/user_otp_repository.dart'
    as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [UserOtpRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockUserOtpRepository extends _i1.Mock implements _i2.UserOtpRepository {
  MockUserOtpRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  dynamic sendEmailVerifyOtpRepo(String? email) =>
      super.noSuchMethod(Invocation.method(
        #sendEmailVerifyOtpRepo,
        [email],
      ));

  @override
  dynamic sendPhoneVerifyOtpRepo(String? phoneNumber) =>
      super.noSuchMethod(Invocation.method(
        #sendPhoneVerifyOtpRepo,
        [phoneNumber],
      ));

  @override
  dynamic verifyPhoneOtpRepo(_i3.VerifyPhoneOtpRequest? request) =>
      super.noSuchMethod(Invocation.method(
        #verifyPhoneOtpRepo,
        [request],
      ));

  @override
  dynamic verifyEmailOtpRepo(_i4.VerifyEmailOtpRequest? request) =>
      super.noSuchMethod(Invocation.method(
        #verifyEmailOtpRepo,
        [request],
      ));

  @override
  dynamic sendResetPasswordOtpRepo(String? phoneNumber) =>
      super.noSuchMethod(Invocation.method(
        #sendResetPasswordOtpRepo,
        [phoneNumber],
      ));

  @override
  dynamic resetPasswordRepo(String? phoneNumber) =>
      super.noSuchMethod(Invocation.method(
        #resetPasswordRepo,
        [phoneNumber],
      ));
}