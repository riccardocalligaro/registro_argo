class ApiLoginResponse {
  String oraInizio;
  String tipoUtente;
  String disclaimer;
  String oraFine;
  String token;

  ApiLoginResponse({
    this.oraInizio,
    this.tipoUtente,
    this.disclaimer,
    this.oraFine,
    this.token,
  });

  ApiLoginResponse.fromJson(Map<String, dynamic> json) {
    oraInizio = json['oraInizio'];
    tipoUtente = json['tipoUtente'];
    disclaimer = json['disclaimer'];
    oraFine = json['oraFine'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['oraInizio'] = this.oraInizio;
    data['tipoUtente'] = this.tipoUtente;
    data['disclaimer'] = this.disclaimer;
    data['oraFine'] = this.oraFine;
    data['token'] = this.token;
    return data;
  }
}
