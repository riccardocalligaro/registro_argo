import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:registro_argo/core/network/network_info.dart';
import 'package:registro_argo/data/network/service/api/argo_client.dart';
import 'package:registro_argo/data/network/service/api/argo_client_impl.dart';
import 'package:registro_argo/data/network/service/api/dio_client.dart';
import 'package:registro_argo/data/repository/login_repository_impl.dart';
import 'package:registro_argo/domain/repository/login_repository.dart';
import 'package:registro_argo/utils/constants/argo_constants.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Features
  // BLoc
  // Remote data sources

  sl.registerLazySingleton<ArgoClient>(
    () => ArgoClientImpl(
      dio: DioClient().createDio(),
      baseUrl: ArgoConstants.API_BASE_URL,
    ),
  );

  // Repository
  sl.registerLazySingleton<LoginRepository>(
    () => LoginRepositoryImpl(
      argoClient: sl(),
      networkInfo: sl(),
    ),
  );

  //! Core
  sl.registerLazySingleton(() => DataConnectionChecker());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
}
