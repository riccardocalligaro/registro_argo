/// Class that containns all the constants for:
///   - [API], api key, version, sw manufacturer, app cod, username, pw and others
abstract class ArgoConstants {
  static const API_BASE_URL = 'https://www.portaleargo.it/famiglia/api/rest';
  //  -- Headers for all requests --
  static const API_VERSION = '2.1.0';
  static const API_KEY = 'ax6542sdru3217t4eesd9';
  static const API_SOFTWARE_MANUFACTURER = 'ARGO Software s.r.l. - Ragusa';
  static const API_APP_CODE = 'APF';

  // -- Headers for login --

  /// Header for the [username] ``x-user-id``
  static const API_HEADER_USER_ID = 'x-user-id';

  /// Header for the user [password] ``x-pwd``
  static const API_HEADER_PASSWORD = 'x-pwd';

  /// Header for the [school code] ``x-cod-min``
  static const API_HEADER_SCHOOL_CODE = 'x-cod-min';

  /// Header of the user [token] ``x-auth-token``
  static const API_HEADER_AUTH_TOKEN = 'x-auth-token';

  /// Header of the Prg [scheda] ``x-prg-scheda``
  static const API_HEADER_PRG_SCHEDA = 'x-prg-scheda';

  /// Header of the Prg [scuola] ``x-prg-scuola``
  static const API_HEADER_PRG_SCUOLA = 'x-prg-scuola';

  /// Header of the Prg [alunno] ``x-prg-alunno``
  static const API_HEADER_PRG_ALUNNO = 'x-prg-alunno';
}
