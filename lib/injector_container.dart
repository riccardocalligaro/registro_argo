import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:registro_argo/core/network/network_info.dart';
import 'package:registro_argo/data/db/dao/profile_dao.dart';
import 'package:registro_argo/data/network/service/api/argo_client.dart';
import 'package:registro_argo/data/network/service/api/argo_client_impl.dart';
import 'package:registro_argo/data/network/service/api/dio_client.dart';
import 'package:registro_argo/data/repository/auth_repository_impl.dart';
import 'package:registro_argo/domain/repository/auth_repository.dart';
import 'package:registro_argo/utils/constants/argo_constants.dart';

import 'data/db/moor_database.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features
  // BLoc
  // Local data sources
  sl.registerLazySingleton<AppDatabase>(() => AppDatabase());
  sl.registerLazySingleton<ProfileDao>(() => ProfileDao(sl()));

  // Remote data sources
  sl.registerLazySingleton<ArgoClient>(
    () => ArgoClientImpl(
      dio: DioClient().createDio(),
      baseUrl: ArgoConstants.API_BASE_URL,
    ),
  );

  // Repository
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      argoClient: sl(),
      networkInfo: sl(),
      profileDao: sl(),
    ),
  );

  //! Core
  sl.registerLazySingleton(() => DataConnectionChecker());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
}
