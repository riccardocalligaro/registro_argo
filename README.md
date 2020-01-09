<h1 align="center">
  <img src="https://i.imgur.com/BCktmzl.png" alt="Registto elettronico"><br>
</h1>

Unofficial app for the Argon school record.

## Table of contents

- [Overview of the project](#overview-of-the-project)
- [API Documentation](#classeviva-api-documentation)

  - [Login](#login)
  - [Today](#today)
  - [Timetable](#timetable)
  - [Absences](#absences)
  - [Notes](#notes)
  - [Grades](#grades)
  - [Scrutinio grades](#scrutinio-grades)
  - [Homeworks](#homeworks)
  - [Lessons](#lessons)
  - [Teachers](#teachers)
  - [Memos](#memos)
  - [Noticeboard](#noticeboard)



## Overview of the project

Flutter client for eletronic school register (Classeviva) management using clean architecture.

- Simple and beautiful
- Useful charts and stats about grades, absences, etc...
- Dark & Light theme (dark is just better)
- Notifications when there is a new event (new grade, new event, etc..)
- Data persistency
- Multi language support (Italian & English) and localizaiton

Main technologies and libraries that I will use:

- 🔝 Flutter + Dart
- 📡 Retrofit + Dio for API requests
- 💡 BLoC for state management
- 📚 Moor for data persistency

## API Documentation

Base url: `https://www.portaleargo.it/famiglia/api/rest/`

## Default headers

- x-key-app: `ax6542sdru3217t4eesd9`
- x-version: `2.0.4`

---

## Login

`POST login`

## Description

This endpoint logs in the user

## Required Headers

- x-user-id: _username_
- x-pwd: _password_
- x-cod-min: _schoolCode_

**Response**

```json
{
  "token": "🤫"
}
```

---

## Today

`GET oggi`

## Description

This endpoint gives a briefing of a given date (if omitted, it automatically selects the current day)

## Required Header

- x-auth-token: _token_

## Body

```json
{ "datGiorno": "2019-11-16" }
```

**Response**

An array of `dati` where every `dati` is either a `homework` or a `lesson`

```json
{
  "dati": [
    {
      "dati": {
        "datGiorno": "2017-10-14",
        "desMateria": "MATEMATICA",
        "numAnno": 2017,
        "prgMateria": "prgMateria",
        "prgClasse": "prgClasse",
        "desCompiti": "Matematica: studiare le frazioni.",
        "prgScuola": "prgScuola",
        "docente": "(Prof. NOME DELL'INSEGNANTE)",
        "codMin": "schoolCode"
      },
      "giorno": "2017-10-14",
      "numAnno": 2017,
      "prgAlunno": "prgAlunno",
      "prgScheda": "prgScheda",
      "prgScuola": "prgScuola",
      "tipo": "COM",
      "titolo": "Compiti assegnati",
      "ordine": 40,
      "codMin": "schoolCode"
    },
    {
      "dati": {
        "datGiorno": "2017-10-14",
        "desMateria": "LINGUA E LETTERATURA ITALIANA",
        "numAnno": 2017,
        "prgMateria": "prgMateria",
        "prgClasse": "prgClasse",
        "prgScuola": "prgScuola",
        "desArgomento": "Verifica d'Italiano.",
        "docente": "(Prof. NOME DELL'INSEGNANTE)",
        "codMin": "schoolCode"
      },
      "giorno": "2017-10-14",
      "numAnno": 2017,
      "prgAlunno": "prgAlunno",
      "prgScheda": "prgScheda",
      "prgScuola": "prgScuola",
      "tipo": "ARG",
      "titolo": "Argomenti lezione",
      "ordine": 50,
      "codMin": "schoolCode"
    }
  ],
  "abilitazioni": {
    "ORARIO_SCOLASTICO": true,
    "VALUTAZIONI_PERIODICHE": true,
    "COMPITI_ASSEGNATI": true,
    "TABELLONE_SCRUTINIO_FINALE": true,
    "CURRICULUM_VISUALIZZA_FAMIGLIA": false,
    "CONSIGLIO_DI_ISTITUTO": true,
    "NOTE_DISCIPLINARI": false,
    "ACCESSO_CON_CONTROLLO_SCHEDA": true,
    "VOTI_GIUDIZI": false,
    "VALUTAZIONI_GIORNALIERE": true,
    "IGNORA_OPZIONE_VOTI_DOCENTI": false,
    "ARGOMENTI_LEZIONE": true,
    "CONSIGLIO_DI_CLASSE": false,
    "VALUTAZIONI_SOSPESE_PERIODICHE": false,
    "PIN_VOTI": false,
    "PAGELLE_ONLINE": true,
    "RECUPERO_DEBITO_INT": false,
    "RECUPERO_DEBITO_SF": false,
    "PROMEMORIA_CLASSE": true,
    "VISUALIZZA_BACHECA_PUBBLICA": false,
    "CURRICULUM_MODIFICA_FAMIGLIA": false,
    "TABELLONE_PERIODI_INTERMEDI": false,
    "TASSE_SCOLASTICHE": true,
    "DOCENTI_CLASSE": false,
    "VISUALIZZA_ASSENZE_REG_PROF": true,
    "VISUALIZZA_CURRICULUM": false,
    "ASSENZE_PER_DATA": true,
    "RICHIESTA_CERTIFICATI": false,
    "ACCESSO_SENZA_CONTROLLO": true,
    "PRENOTAZIONE_ALUNNI": false,
    "MODIFICA_RECAPITI": true,
    "PAGELLINO_ONLINE": false,
    "MEDIA_PESATA": false,
    "GIUSTIFICAZIONI_ASSENZE": false
  },
  "nuoviElementi": 0
}
```

### Intresting data

**Lesson**

- `datGiorno` The date of the given event
- `desMateria` Description of the subject
- `docente` Author
- `desArgomento` Topic of the lesson

**Assignment**

- `datGiorno` The date of the given event
- `desMateria` Description of the subject
- `docente` Author
- `desCompito` Assigment description

---

## Timetable

`GET orario`

## Description

This endpoint gives the student timetable

## Required Header

- x-auth-token: _token_

**Response**

An array of `dati` where every `dati` is an hour

```json
{
  "dati": [
    {
      "numOra": "1",
      "giorno": "Luned\u00ec",
      "prgClasse": "prgClasse",
      "prgScuola": "prgScuola",
      "lezioni": [
        {
          "materia": "DIRITTO ED ECON.",
          "docente": "(Prof. NOME DELL'INSEGNANTE)"
        }
      ],
      "numGiorno": "1",
      "codMin": "schoolCode"
    }
  ]
}
```

### Intresting data

- `numOra` The date of the given event
- `giorno` Description of the subject
- `docente` Author
- `lezioni` Array of lessons in the given hour
  - `materia` Subject name
  - `docente` Teacher name
- `numGiorno` day of the week

---

`GET orario`

## Description

This endpoint gives the student timetable

## Required Header

- x-auth-token: _token_

**Response**

An array of `dati` where every `dati` is an hour

```json
{
  "dati": [
    {
      "numOra": "1",
      "giorno": "Luned\u00ec",
      "prgClasse": "prgClasse",
      "prgScuola": "prgScuola",
      "lezioni": [
        {
          "materia": "DIRITTO ED ECON.",
          "docente": "(Prof. NOME DELL'INSEGNANTE)"
        }
      ],
      "numGiorno": "1",
      "codMin": "schoolCode"
    }
  ]
}
```

### Intresting data

- `numOra` The date of the given event
- `giorno` Description of the subject
- `docente` Author
- `lezioni` Array of lessons in the given hour
  - `materia` Subject name
  - `docente` Teacher name
- `numGiorno` day of the week

---

## Absences

`GET assenze`

## Description

This endpoint gives the student absences

## Required Header

- x-auth-token: _token_

**Response**

An array of `dati` where every element is an event

```json
{
  "dati": [
    {
      "codEvento": "A",
      "numOra": "",
      "datGiustificazione": "2017-03-27",
      "prgScuola": "prgScuola",
      "prgScheda": "prgScheda",
      "binUid": "binUid",
      "codMin": "schoolCode",
      "datAssenza": "2017-03-25",
      "numAnno": "2016",
      "prgAlunno": "prgAlunno",
      "flgDaGiustificare": "1",
      "giustificataDa": "(Prof. NOME DELL'INSEGNANTE)",
      "desAssenza": "",
      "registrataDa": "(Prof. NOME DELL'INSEGNANTE)"
    }
  ]
}
```

### Intresting data

- `codEvento` Event code
- `numOra` Empty if it is an absence, useful if it is a delay on an early exit
- `datAssenza` Date of the event
- `flgDaGiustificare` 1 if the event needs to be justified
- `giustificataDa` name of the professors who justified the event
- `registrataDa` name of the professors who registered the event

### Unknown

- `binUid` _?_

---

## Notes

`GET notedisciplinari`

## Description

This endpoint gives the student disciplinary notes

## Required Header

- x-auth-token: _token_

**Response**

An array of `dati` where every element is an note

```json
{
  "dati": [
    {
      "prgAlunno": "prgAlunno",
      "numAnno": "2016",
      "flgVisualizzata": "S",
      "prgAnagrafe": "prgAnagrafe",
      "prgNota": "prgNota",
      "prgScheda": "prgScheda",
      "prgScuola": "prgScuola",
      "desNota": "Lo studente non ha fatto i compiti.",
      "datNota": "2018-10-14",
      "docente": "(Prof. NOME DELL'INSEGNANTE)",
      "codMin": "schoolCode"
    }
  ]
}
```

### Intresting data

- `flgVisualizzata` S if viewed N if not
- `desNota` Description of the note
- `datAssenza` Date of the event
- `datNota` Date of the note
- `docente` Author of the note

---

## Grades

`GET votigiornalieri`

## Description

This endpoint gives the student grades

## Required Header

- x-auth-token: _token_

**Response**

An array of `dati` where every element is grade

```json
{
  "dati": [
    {
      "datGiorno": "2017-04-19",
      "desMateria": "GEOGRAFIA",
      "prgMateria": "prgMateria",
      "prgScuola": "prgScuola",
      "prgScheda": "prgScheda",
      "codVotoPratico": "N",
      "decValore": "7.5",
      "codMin": "schoolCode",
      "desProva": "",
      "codVoto": "7\u00bd",
      "numAnno": "2016",
      "prgAlunno": "prgAlunno",
      "desCommento": "",
      "docente": "(Prof NOME DELL'INSEGNANTE)\n)"
    }
  ]
}
```

### Intresting data

- `datGiorno` Date of the event
- `desMateria` Subject name
- `codVotoPratico` **S** (written test), **N** (oral interview) or **P** (practice test)
- `decValore` Decimal value of the grade
- `codVoto` Display string of the code
- `desCommento` Description of the grade
- `docente` Author of the grade

---

## Scrutinio grades

`GET votiscrutinio`

## Description

This endpoint gives the scrutinio (end term school report) grades

## Required Header

- x-auth-token: _token_

**Response**

An array of `dati` where every element is grade

```json
{
  "dati": [
    {
      "ordineMateria": "2",
      "desMateria": "LINGUA E LET. ITA.",
      "votoOrale": {
        "codVoto": "7"
      },
      "prgMateria": "prgMateria",
      "prgScuola": "prgScuola",
      "prgScheda": "prgScheda",
      "votoUnico": "1",
      "prgPeriodo": "1",
      "assenze": "1",
      "codMin": "schoolCode",
      "suddivisione": "SO",
      "numAnno": "2016",
      "prgAlunno": "prgAlunno",
      "giudizioSintetico": "",
      "prgClasse": "prgClasse"
    }
  ]
}
```

### Intresting data

- `desMateria` Subject name
- `decValore` Decimal value of the grade
- `votoAltro` or `votoPratico` or `votoScritto` or `votoOrale`
  - `codVoto` vote code
- `desCommento` Description of the grade
- `giudizioSintetico` Brief review of your school progress

---

## Homeworks

`GET compiti`

## Description

This endpoint gives the student homeworks

## Required Header

- x-auth-token: _token_

**Response**

An array of `dati` where every element is a homework assignment

```json
{
  "dati": [
    {
      "datGiorno": "2017-04-22",
      "desMateria": "S.I. BIOLOGIA",
      "numAnno": "2016",
      "prgMateria": "prgMateria",
      "prgClasse": "prgClasse",
      "desCompiti": "Fare esercizio numero 31 a pagina 2.",
      "prgScuola": "2",
      "docente": "(Prof. NOME DELL'INSEGNANTE)",
      "codMin": "schoolCode"
    }
  ]
}
```

### Intresting data

- `datGiorno` Date of the assignment
- `desMateria` Subject name
- `desCompiti` Description of the assigment
- `docente` Author of the assigment

---

## Lessons

`GET lezioni`

## Description

This endpoint gives the student lessons

## Required Header

- x-auth-token: _token_

**Response**

An array of `dati` where every element is a lesson

```json
{
  "dati": [
    {
      "datGiorno": "2017-04-22",
      "desMateria": "S.I. BIOLOGIA",
      "numAnno": "2016",
      "prgMateria": "prgMateria",
      "prgClasse": "prgClasse",
      "prgScuola": "prgScuola",
      "desArgomento": "Abbiamo visto un video.",
      "docente": "(Prof. NOME DELL'INSEGNANTE)",
      "codMin": "schoolCode\n)"
    }
  ]
}
```

### Intresting data

- `datGiorno` Date of the assignment
- `desMateria` Subject name
- `desArgomento` Lesson topic
- `docente` Author of the lesson

---

## Teachers

`GET docenti`

## Description

This endpoint gives the student teachers

## Required Header

- x-auth-token: _token_

**Response**

An array of `dati` where every element is a teacher

```json
{
  "dati": [
    {
      "prgClasse": "1967",
      "prgAnagrafe": "prgAnagrafe",
      "prgScuola": "prgScuola",
      "materie": "(S.I. BIOLOGIA)",
      "docente": {
        "email": "",
        "nome": "NOME",
        "cognome": "DELL'INSEGNANTE"
      },
      "codMin": "schoolCode"
    }
  ]
}
```

### Intresting data

- `materie` Subject(s?)
- `docente`
  - `email` Email of the teacher
  - `nome` Name of the teacher
  - `cognome` Surname of the teacher

---

## Memos

`GET promemoria`

## Description

This endpoint gives the student memos

## Required Header

- x-auth-token: _token_

**Response**

An array of `dati` where every element is a memo

```json
{
  "dati": [
    {
      "desAnnotazioni": "IT Test",
      "datGiorno": "2017-05-11",
      "numAnno": "2016",
      "prgProgressivo": "prgProgressivo",
      "prgClasse": "prgClasse",
      "prgAnagrafe": "prgAnagrafe",
      "prgScuola": "prgScuola",
      "desMittente": "NOME DELL'INSEGNANTE",
      "codMin": "schoolCode\n)"
    }
  ]
}
```

### Intresting data

- `desAnnotazioni` Description of the memo
- `datGiorno` Day when the event occours
- `desMittente` Author of the memo

---

## Noticeboard

`GET bacheca`

## Description

This endpoint gives the student memos

## Required Header

- x-auth-token: _token_

**Response**

An array of `dati` where every element is a memo

```json
?
```

### Intresting data

- `desAnnotazioni` Description of the memo
- `datGiorno` Day when the event occours
- `desMittente` Author of the memo
