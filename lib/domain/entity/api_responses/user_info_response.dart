class ApiUserInfoResponse {
  bool schedaSelezionata;
  String desScuola;
  int prgScuola;
  int prgScheda;
  String desSede;
  String authToken;
  Alunno alunno;
  String codMin;
  int numAnno;
  int prgAlunno;
  int prgClasse;
  String desDenominazione;
  String desCorso;
  Abilitazioni abilitazioni;
  AnnoScolastico annoScolastico;

  ApiUserInfoResponse(
      {this.schedaSelezionata,
      this.desScuola,
      this.prgScuola,
      this.prgScheda,
      this.desSede,
      this.authToken,
      this.alunno,
      this.codMin,
      this.numAnno,
      this.prgAlunno,
      this.prgClasse,
      this.desDenominazione,
      this.desCorso,
      this.abilitazioni,
      this.annoScolastico});

  ApiUserInfoResponse.fromJson(Map<String, dynamic> json) {
    schedaSelezionata = json['schedaSelezionata'];
    desScuola = json['desScuola'];
    prgScuola = json['prgScuola'];
    prgScheda = json['prgScheda'];
    desSede = json['desSede'];
    authToken = json['authToken'];
    alunno =
        json['alunno'] != null ? new Alunno.fromJson(json['alunno']) : null;
    codMin = json['codMin'];
    numAnno = json['numAnno'];
    prgAlunno = json['prgAlunno'];
    prgClasse = json['prgClasse'];
    desDenominazione = json['desDenominazione'];
    desCorso = json['desCorso'];
    abilitazioni = json['abilitazioni'] != null
        ? new Abilitazioni.fromJson(json['abilitazioni'])
        : null;
    annoScolastico = json['annoScolastico'] != null
        ? new AnnoScolastico.fromJson(json['annoScolastico'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['schedaSelezionata'] = this.schedaSelezionata;
    data['desScuola'] = this.desScuola;
    data['prgScuola'] = this.prgScuola;
    data['prgScheda'] = this.prgScheda;
    data['desSede'] = this.desSede;
    data['authToken'] = this.authToken;
    if (this.alunno != null) {
      data['alunno'] = this.alunno.toJson();
    }
    data['codMin'] = this.codMin;
    data['numAnno'] = this.numAnno;
    data['prgAlunno'] = this.prgAlunno;
    data['prgClasse'] = this.prgClasse;
    data['desDenominazione'] = this.desDenominazione;
    data['desCorso'] = this.desCorso;
    if (this.abilitazioni != null) {
      data['abilitazioni'] = this.abilitazioni.toJson();
    }
    if (this.annoScolastico != null) {
      data['annoScolastico'] = this.annoScolastico.toJson();
    }
    return data;
  }
}

class Alunno {
  String desCf;
  String desCognome;
  String desVia;
  String desCap;
  String desNome;
  Null desCellulare;
  String desComuneNascita;
  String flgSesso;
  String datNascita;
  String desIndirizzoRecapito;
  String desComuneRecapito;
  String desCapResidenza;
  String desComuneResidenza;
  Null desTelefono;
  String desCittadinanza;

  Alunno(
      {this.desCf,
      this.desCognome,
      this.desVia,
      this.desCap,
      this.desNome,
      this.desCellulare,
      this.desComuneNascita,
      this.flgSesso,
      this.datNascita,
      this.desIndirizzoRecapito,
      this.desComuneRecapito,
      this.desCapResidenza,
      this.desComuneResidenza,
      this.desTelefono,
      this.desCittadinanza});

  Alunno.fromJson(Map<String, dynamic> json) {
    desCf = json['desCf'];
    desCognome = json['desCognome'];
    desVia = json['desVia'];
    desCap = json['desCap'];
    desNome = json['desNome'];
    desCellulare = json['desCellulare'];
    desComuneNascita = json['desComuneNascita'];
    flgSesso = json['flgSesso'];
    datNascita = json['datNascita'];
    desIndirizzoRecapito = json['desIndirizzoRecapito'];
    desComuneRecapito = json['desComuneRecapito'];
    desCapResidenza = json['desCapResidenza'];
    desComuneResidenza = json['desComuneResidenza'];
    desTelefono = json['desTelefono'];
    desCittadinanza = json['desCittadinanza'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['desCf'] = this.desCf;
    data['desCognome'] = this.desCognome;
    data['desVia'] = this.desVia;
    data['desCap'] = this.desCap;
    data['desNome'] = this.desNome;
    data['desCellulare'] = this.desCellulare;
    data['desComuneNascita'] = this.desComuneNascita;
    data['flgSesso'] = this.flgSesso;
    data['datNascita'] = this.datNascita;
    data['desIndirizzoRecapito'] = this.desIndirizzoRecapito;
    data['desComuneRecapito'] = this.desComuneRecapito;
    data['desCapResidenza'] = this.desCapResidenza;
    data['desComuneResidenza'] = this.desComuneResidenza;
    data['desTelefono'] = this.desTelefono;
    data['desCittadinanza'] = this.desCittadinanza;
    return data;
  }
}

class Abilitazioni {
  bool oRARIOSCOLASTICO;
  bool vALUTAZIONIPERIODICHE;
  bool cOMPITIASSEGNATI;
  bool tABELLONESCRUTINIOFINALE;
  bool cURRICULUMVISUALIZZAFAMIGLIA;
  bool cONSIGLIODIISTITUTO;
  bool nOTEDISCIPLINARI;
  bool aCCESSOCONCONTROLLOSCHEDA;
  bool vOTIGIUDIZI;
  bool vALUTAZIONIGIORNALIERE;
  bool iGNORAOPZIONEVOTIDOCENTI;
  bool aRGOMENTILEZIONE;
  bool cONSIGLIODICLASSE;
  bool vALUTAZIONISOSPESEPERIODICHE;
  bool pINVOTI;
  bool pAGELLEONLINE;
  bool dISABILITAACCESSOFAMIGLIA;
  bool rECUPERODEBITOINT;
  bool rECUPERODEBITOSF;
  bool pROMEMORIACLASSE;
  bool vISUALIZZABACHECAPUBBLICA;
  bool cURRICULUMMODIFICAFAMIGLIA;
  bool tABELLONEPERIODIINTERMEDI;
  bool tASSESCOLASTICHE;
  bool dOCENTICLASSE;
  bool vISUALIZZAASSENZEREGPROF;
  bool vISUALIZZACURRICULUM;
  bool aSSENZEPERDATA;
  bool rICHIESTACERTIFICATI;
  bool aCCESSOSENZACONTROLLO;
  bool pRENOTAZIONEALUNNI;
  bool mODIFICARECAPITI;
  bool pAGELLINOONLINE;
  bool mEDIAPESATA;
  bool gIUSTIFICAZIONIASSENZE;
  bool cAMBIOPASSWORD;

  Abilitazioni(
      {this.oRARIOSCOLASTICO,
      this.vALUTAZIONIPERIODICHE,
      this.cOMPITIASSEGNATI,
      this.tABELLONESCRUTINIOFINALE,
      this.cURRICULUMVISUALIZZAFAMIGLIA,
      this.cONSIGLIODIISTITUTO,
      this.nOTEDISCIPLINARI,
      this.aCCESSOCONCONTROLLOSCHEDA,
      this.vOTIGIUDIZI,
      this.vALUTAZIONIGIORNALIERE,
      this.iGNORAOPZIONEVOTIDOCENTI,
      this.aRGOMENTILEZIONE,
      this.cONSIGLIODICLASSE,
      this.vALUTAZIONISOSPESEPERIODICHE,
      this.pINVOTI,
      this.pAGELLEONLINE,
      this.dISABILITAACCESSOFAMIGLIA,
      this.rECUPERODEBITOINT,
      this.rECUPERODEBITOSF,
      this.pROMEMORIACLASSE,
      this.vISUALIZZABACHECAPUBBLICA,
      this.cURRICULUMMODIFICAFAMIGLIA,
      this.tABELLONEPERIODIINTERMEDI,
      this.tASSESCOLASTICHE,
      this.dOCENTICLASSE,
      this.vISUALIZZAASSENZEREGPROF,
      this.vISUALIZZACURRICULUM,
      this.aSSENZEPERDATA,
      this.rICHIESTACERTIFICATI,
      this.aCCESSOSENZACONTROLLO,
      this.pRENOTAZIONEALUNNI,
      this.mODIFICARECAPITI,
      this.pAGELLINOONLINE,
      this.mEDIAPESATA,
      this.gIUSTIFICAZIONIASSENZE,
      this.cAMBIOPASSWORD});

  Abilitazioni.fromJson(Map<String, dynamic> json) {
    oRARIOSCOLASTICO = json['ORARIO_SCOLASTICO'];
    vALUTAZIONIPERIODICHE = json['VALUTAZIONI_PERIODICHE'];
    cOMPITIASSEGNATI = json['COMPITI_ASSEGNATI'];
    tABELLONESCRUTINIOFINALE = json['TABELLONE_SCRUTINIO_FINALE'];
    cURRICULUMVISUALIZZAFAMIGLIA = json['CURRICULUM_VISUALIZZA_FAMIGLIA'];
    cONSIGLIODIISTITUTO = json['CONSIGLIO_DI_ISTITUTO'];
    nOTEDISCIPLINARI = json['NOTE_DISCIPLINARI'];
    aCCESSOCONCONTROLLOSCHEDA = json['ACCESSO_CON_CONTROLLO_SCHEDA'];
    vOTIGIUDIZI = json['VOTI_GIUDIZI'];
    vALUTAZIONIGIORNALIERE = json['VALUTAZIONI_GIORNALIERE'];
    iGNORAOPZIONEVOTIDOCENTI = json['IGNORA_OPZIONE_VOTI_DOCENTI'];
    aRGOMENTILEZIONE = json['ARGOMENTI_LEZIONE'];
    cONSIGLIODICLASSE = json['CONSIGLIO_DI_CLASSE'];
    vALUTAZIONISOSPESEPERIODICHE = json['VALUTAZIONI_SOSPESE_PERIODICHE'];
    pINVOTI = json['PIN_VOTI'];
    pAGELLEONLINE = json['PAGELLE_ONLINE'];
    dISABILITAACCESSOFAMIGLIA = json['DISABILITA_ACCESSO_FAMIGLIA'];
    rECUPERODEBITOINT = json['RECUPERO_DEBITO_INT'];
    rECUPERODEBITOSF = json['RECUPERO_DEBITO_SF'];
    pROMEMORIACLASSE = json['PROMEMORIA_CLASSE'];
    vISUALIZZABACHECAPUBBLICA = json['VISUALIZZA_BACHECA_PUBBLICA'];
    cURRICULUMMODIFICAFAMIGLIA = json['CURRICULUM_MODIFICA_FAMIGLIA'];
    tABELLONEPERIODIINTERMEDI = json['TABELLONE_PERIODI_INTERMEDI'];
    tASSESCOLASTICHE = json['TASSE_SCOLASTICHE'];
    dOCENTICLASSE = json['DOCENTI_CLASSE'];
    vISUALIZZAASSENZEREGPROF = json['VISUALIZZA_ASSENZE_REG_PROF'];
    vISUALIZZACURRICULUM = json['VISUALIZZA_CURRICULUM'];
    aSSENZEPERDATA = json['ASSENZE_PER_DATA'];
    rICHIESTACERTIFICATI = json['RICHIESTA_CERTIFICATI'];
    aCCESSOSENZACONTROLLO = json['ACCESSO_SENZA_CONTROLLO'];
    pRENOTAZIONEALUNNI = json['PRENOTAZIONE_ALUNNI'];
    mODIFICARECAPITI = json['MODIFICA_RECAPITI'];
    pAGELLINOONLINE = json['PAGELLINO_ONLINE'];
    mEDIAPESATA = json['MEDIA_PESATA'];
    gIUSTIFICAZIONIASSENZE = json['GIUSTIFICAZIONI_ASSENZE'];
    cAMBIOPASSWORD = json['CAMBIO_PASSWORD'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ORARIO_SCOLASTICO'] = this.oRARIOSCOLASTICO;
    data['VALUTAZIONI_PERIODICHE'] = this.vALUTAZIONIPERIODICHE;
    data['COMPITI_ASSEGNATI'] = this.cOMPITIASSEGNATI;
    data['TABELLONE_SCRUTINIO_FINALE'] = this.tABELLONESCRUTINIOFINALE;
    data['CURRICULUM_VISUALIZZA_FAMIGLIA'] = this.cURRICULUMVISUALIZZAFAMIGLIA;
    data['CONSIGLIO_DI_ISTITUTO'] = this.cONSIGLIODIISTITUTO;
    data['NOTE_DISCIPLINARI'] = this.nOTEDISCIPLINARI;
    data['ACCESSO_CON_CONTROLLO_SCHEDA'] = this.aCCESSOCONCONTROLLOSCHEDA;
    data['VOTI_GIUDIZI'] = this.vOTIGIUDIZI;
    data['VALUTAZIONI_GIORNALIERE'] = this.vALUTAZIONIGIORNALIERE;
    data['IGNORA_OPZIONE_VOTI_DOCENTI'] = this.iGNORAOPZIONEVOTIDOCENTI;
    data['ARGOMENTI_LEZIONE'] = this.aRGOMENTILEZIONE;
    data['CONSIGLIO_DI_CLASSE'] = this.cONSIGLIODICLASSE;
    data['VALUTAZIONI_SOSPESE_PERIODICHE'] = this.vALUTAZIONISOSPESEPERIODICHE;
    data['PIN_VOTI'] = this.pINVOTI;
    data['PAGELLE_ONLINE'] = this.pAGELLEONLINE;
    data['DISABILITA_ACCESSO_FAMIGLIA'] = this.dISABILITAACCESSOFAMIGLIA;
    data['RECUPERO_DEBITO_INT'] = this.rECUPERODEBITOINT;
    data['RECUPERO_DEBITO_SF'] = this.rECUPERODEBITOSF;
    data['PROMEMORIA_CLASSE'] = this.pROMEMORIACLASSE;
    data['VISUALIZZA_BACHECA_PUBBLICA'] = this.vISUALIZZABACHECAPUBBLICA;
    data['CURRICULUM_MODIFICA_FAMIGLIA'] = this.cURRICULUMMODIFICAFAMIGLIA;
    data['TABELLONE_PERIODI_INTERMEDI'] = this.tABELLONEPERIODIINTERMEDI;
    data['TASSE_SCOLASTICHE'] = this.tASSESCOLASTICHE;
    data['DOCENTI_CLASSE'] = this.dOCENTICLASSE;
    data['VISUALIZZA_ASSENZE_REG_PROF'] = this.vISUALIZZAASSENZEREGPROF;
    data['VISUALIZZA_CURRICULUM'] = this.vISUALIZZACURRICULUM;
    data['ASSENZE_PER_DATA'] = this.aSSENZEPERDATA;
    data['RICHIESTA_CERTIFICATI'] = this.rICHIESTACERTIFICATI;
    data['ACCESSO_SENZA_CONTROLLO'] = this.aCCESSOSENZACONTROLLO;
    data['PRENOTAZIONE_ALUNNI'] = this.pRENOTAZIONEALUNNI;
    data['MODIFICA_RECAPITI'] = this.mODIFICARECAPITI;
    data['PAGELLINO_ONLINE'] = this.pAGELLINOONLINE;
    data['MEDIA_PESATA'] = this.mEDIAPESATA;
    data['GIUSTIFICAZIONI_ASSENZE'] = this.gIUSTIFICAZIONIASSENZE;
    data['CAMBIO_PASSWORD'] = this.cAMBIOPASSWORD;
    return data;
  }
}

class AnnoScolastico {
  String datInizio;
  String datFine;

  AnnoScolastico({this.datInizio, this.datFine});

  AnnoScolastico.fromJson(Map<String, dynamic> json) {
    datInizio = json['datInizio'];
    datFine = json['datFine'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['datInizio'] = this.datInizio;
    data['datFine'] = this.datFine;
    return data;
  }
}
