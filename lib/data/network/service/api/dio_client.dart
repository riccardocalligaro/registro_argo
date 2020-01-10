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

    // dio.options.headers[ArgoConstants.API_HEADER_PRG_SCHEDA] = '0';
    // dio.options.headers[ArgoConstants.API_HEADER_PRG_ALUNNO] = '0';
    // dio.options.headers[ArgoConstants.API_HEADER_PRG_SCUOLA] = '0';
    dio.interceptors.add(
      InterceptorsWrapper(onRequest: (RequestOptions options) async {
        if (options.path != '/login' && options.path != '/schede') {
          dio.lock();
          // todo: get these from the database
          dio.options.headers[ArgoConstants.API_HEADER_PRG_SCHEDA] = '';
          dio.options.headers[ArgoConstants.API_HEADER_PRG_ALUNNO] = '';
          dio.options.headers[ArgoConstants.API_HEADER_PRG_SCUOLA] = '';
          dio.options.headers[ArgoConstants.API_HEADER_USER_ID] = '';
          dio.options.headers[ArgoConstants.API_HEADER_PASSWORD] = '';
          dio.options.headers[ArgoConstants.API_HEADER_SCHOOL_CODE] = '';
          dio.options.headers[ArgoConstants.API_HEADER_AUTH_TOKEN] = '';
        }

        dio.unlock();
      }, onResponse: (Response response) {
        print(
            "[AppApiService][${DateTime.now().toString().split(' ').last}]-> DioEND\tonResponse \t${response.statusCode} [${response.request.path}] ${response.request.method}  ${response.request.responseType}");
        print(response.request.headers.toString());
      }, onError: (DioError error) {
        print(
            "[AppApiService][${DateTime.now().toString().split(' ').last}]-> DioEND\tonError \turl:[${error.request.baseUrl}] type:${error.type} message: ${error.message}");
      }),
    );

    return dio;
  }
}
