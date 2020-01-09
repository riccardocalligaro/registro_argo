import 'package:dio/dio.dart';
import 'package:registro_argo/utils/constants/argo_constants.dart';

class DioClient {
  DioClient();

  Dio createDio() {
    final dio = Dio();
    // These headers are required in every request
    dio.options.headers['x-version'] = ArgoConstants.API_VERSION;
    dio.options.headers['x-key-app'] = ArgoConstants.API_KEY;
    dio.options.headers['x-produttore-software'] =
        ArgoConstants.API_SOFTWARE_MANUFACTURER;
    dio.options.headers['x-app-code'] = ArgoConstants.API_APP_CODE;
    dio.options.headers['X-Requested-With'] = 'XMLHttpRequest';

    dio.interceptors.add(
      InterceptorsWrapper(
          onRequest: (RequestOptions options) async {
            if (options.path != '/login') {
              // todo:  get these from the db
              dio.options.headers[ArgoConstants.API_HEADER_USER_ID] = '';
              dio.options.headers[ArgoConstants.API_HEADER_PASSWORD] = '';
              dio.options.headers[ArgoConstants.API_HEADER_SCHOOL_CODE] = '';
              dio.options.headers[ArgoConstants.API_HEADER_AUTH_TOKEN] = '';
            }

            if (options.path != '/schede' && options.path != '/login') {
              dio.options.headers[ArgoConstants.API_HEADER_PRG_SCHEDA] = '0';
              dio.options.headers[ArgoConstants.API_HEADER_PRG_ALUNNO] = '0';
              dio.options.headers[ArgoConstants.API_HEADER_PRG_SCUOLA] = '0';
            }
          },
          onResponse: (Response response) {},
          onError: (DioError error) {}),
    );

    return dio;
  }
}
