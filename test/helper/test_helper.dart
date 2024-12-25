import 'package:notd_mobile/api/dio_client.dart';
import 'package:notd_mobile/apps/profile/repo/profile_repo.dart';
import 'package:get_storage/get_storage.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  GetStorage,
  DioClient,

  /// Add objects to be mocked here.
  ProfileRepo,
])
void main() {}
