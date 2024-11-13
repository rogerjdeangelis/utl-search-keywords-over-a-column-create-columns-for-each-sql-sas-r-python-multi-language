%let pgm=utl-search-keywords-over-a-column-create-columns-for-each-sql-sas-r-python-multi-language;

%stop_submission;

Search keywords over a column create columns for each sql sas r python multi language

     SOLUTIONS

         1 sas wthout sql arrays
         2 r without sql arrays
         3 r python without sql arrays
         4 sas with with sql arrays
         5 r with with sql arrays
         6 python with with sql arrays
         7 r dplyr stringr Language ( |> mutate map str_glue str_detct set_names)
           (could not get it to work - not presented - probaby my issue)

              want<-have |>
              dplyr::mutate(
               !!!purrr::map(
               purrr::set_names(
                stringr::str_glue
                  ("\\b{stringstosearch}\\b"),
                stringstosearch
                 ),
               (str) stringr::str_detect(x, str)
                 )

github               )
https://tinyurl.com/56ysee6a
https://github.com/rogerjdeangelis/utl-search-keywords-over-a-column-create-columns-for-each-sql-sas-r-python-multi-language

stackoverflow r
https://tinyurl.com/2tmr2ju8
https://stackoverflow.com/questions/79183909/search-multiple-keywords-over-a-column-and-create-columns-for-each

/*               _     _
 _ __  _ __ ___ | |__ | | ___ _ __ ___
| `_ \| `__/ _ \| `_ \| |/ _ \ `_ ` _ \
| |_) | | | (_) | |_) | |  __/ | | | | |
| .__/|_|  \___/|_.__/|_|\___|_| |_| |_|
|_|
*/

/**************************************************************************************************************************/
/*                              |                                 |                                                       */
/*     INPUT                    |         PROCESS                 |                          OUTPUT                       */
/*     =====                    |         =======                 |                          =======                      */
/*                              |   SELF EXPLANATORY              |                                                       */
/*                              |                                 |                                                       */
/*                              |                                 |                             TOX END ATX FROM ISX OFF  */
/* ID X                         | SAS WTHOUT SQL ARRAYS           | ID  X                             X                X  */
/*                              |                                 |        ==         ==         ==               ==      */
/*  1 Not to popular is simply  | select                          | 1  Not to popular is simply   1   0   0    0   1   0  */
/*  2 Latin at Hampden-Sydney   |    id                           |        ==         ==         ==               ==      */
/*  3 It has roots of           |   ,x                            |                                                       */
/*  4 literature from making it |   ,index(x," to "  )>0  as tox  | 2  Latin at Hampden-Sydney    0   0   1    0   0   0  */
/*  5 The chunk of Lorem I      |   ,index(x," and " )>0  as endx | 3  It has roots of            0   0   0    0   0   0  */
/*                              |   ,index(x," at "  )>0  as atx  | 4  literature from making it  0   0   0    1   0   0  */
/*                              |   ,index(x," from ")>0  as fromx| 5  The chunk of Lorem I       0   0   0    0   0   0  */
/*                              |   ,index(x," is "  )>0  as isx  |                                                       */
/*                              |   ,index(x," off " )>0  as offx |                                                       */
/*                              | from                            |                                                       */
/*                              |    sd1.have                     |                                                       */
/*                              |                                 |                                                       */
/*                              |---------------------------------|                                                       */
/*                              |                                 |                                                       */
/*                              | R AND PYTHON WITHOUT SQL ARRAYS |                                                       */
/*                              |                                 |                                                       */
/*                              | select                          |                                                       */
/*                              |    id                           |                                                       */
/*                              |   ,x                            |                                                       */
/*                              |   ,instr(x," to "  )>0 as tox   |                                                       */
/*                              |   ,instr(x," and " )>0 as endx  |                                                       */
/*                              |   ,instr(x," at "  )>0 as atx   |                                                       */
/*                              |   ,instr(x," from ")>0 as fromx |                                                       */
/*                              |   ,instr(x," is "  )>0 as isx   |                                                       */
/*                              |   ,instr(x," off " )>0 as offx  |                                                       */
/*                              | from                            |                                                       */
/*                              |     have                        |                                                       */
/*                              |                                 |                                                       */
/*                              |---------------------------------|                                                       */
/*                              |                                 |                                                       */
/*                              | SAS WITH SQL ARRAYS             |                                                       */
/*                              |                                 |                                                       */
/*                              | %array(_wrd                     |                                                       */
/*                              |  ,values=to and at from is of); |                                                       */
/*                              |                                 |                                                       */
/*                              | select                          |                                                       */
/*                              |   id                            |                                                       */
/*                              |  ,x                             |                                                       */
/*                              |  ,%do_over(_wrd,phrase=         |                                                       */
/*                              |     index(x," ? "  )>0 as ?x    |                                                       */
/*                              |    ,between=comma)              |                                                       */
/*                              | from                            |                                                       */
/*                              |     sd1.have                    |                                                       */
/*                              |                                 |                                                       */
/*                              |---------------------------------|                                                       */
/*                              |                                 |                                                       */
/*                              | R & PYTHON WITH SQL ARRAYS      |                                                       */
/*                              |                                 |                                                       */
/*                              | %let sqlCde=                    |                                                       */
/*                              |  %do_over(_wrd                  |                                                       */
/*                              | ,phrase=instr(x," ? " )>0 as ?x |                                                       */
/*                              |  ,between = comma);             |                                                       */
/*                              |                                 |                                                       */
/*                              |   select                        |                                                       */
/*                              |       id                        |                                                       */
/*                              |      ,x                         |                                                       */
/*                              |      ,&sqlCde                   |                                                       */
/*                              |   from                          |                                                       */
/*                              |       have                      |                                                       */
/*                              |                                 |                                                       */
/**************************************************************************************************************************/


/*                   _
(_)_ __  _ __  _   _| |_
| | `_ \| `_ \| | | | __|
| | | | | |_) | |_| | |_
|_|_| |_| .__/ \__,_|\__|
        |_|
*/

CREATE SQL ARRAY FOR PROC SQL
=============================

%array(_wrd
 ,values=to and at from is of);

%utlnopts;
%put &=_wrd1;
%put &=_wrd2;
%put &=_wrd3;
%put &=_wrd4;
%put &=_wrd5;
%put &=_wrd6;
%put &=_wrdn;
%utlopts;

GENERATE CODE FOR R and PYTHON SQLLITE
=======================================

Change istr to index for proc sql
%let sqlCde=
  %do_over(_wrd
    ,phrase=instr(x," ? "  )>0 as ?x
     ,between = comma);

%put &=sqlCde;

GENERATED CODE

 SQLCDE=
    instr(x," to "   )>0 as tox
   ,instr(x," and "  )>0 as andx
   ,instr(x," at "   )>0 as atx
   ,instr(x," from " )>0 as fromx
   ,instr(x," is "   )>0 as isx
   ,instr(x," of"    )>0 as ofx

Note you can create the code in base R or Python

options validvarname=upcase;
libname sd1 "d:/sd1";
data sd1.have;
  input id & x & $44.;
cards4;
1  Not to popular is simply
2  Latin at Hampden-Sydney
3  It has roots of  Latin
4  literature from making it
5  The chunk of Lorem I
;;;;
run;quit;

/**************************************************************************************************************************/
/*                                                                                                                        */
/*  INPUTS                                                                                                                */
/*  ======                                                                                                                */
/*                                                                                                                        */
/* _WRD macro array                                                                                                       */
/*                                                                                                                        */
/* _WRD1=to                                                                                                               */
/* _WRD2=and                                                                                                              */
/* _WRD3=at                                                                                                               */
/* _WRD4=from                                                                                                             */
/* _WRD5=is                                                                                                               */
/* _WRD6=of                                                                                                               */
/*                                                                                                                        */
/* _WRDN=6                                                                                                                */
/*                                                                                                                        */
/* GENERATED CODE (using macro array very similar in SAS R and PYTHON )                                                   */
/*                                                                                                                        */
/* FOR RR and PYTHON SQLDF           |     FOR SAS PROC SQL                                                               */
/*                                   |                                                                                    */
/* SQLCDE=                           |     SQLCDE=                                                                        */
/*    instr(x," to "   )>0 as tox    |        index(x," to "   )>0 as tox                                                 */
/*   ,instr(x," and "  )>0 as andx   |       ,index(x," and "  )>0 as andx                                                */
/*   ,instr(x," at "   )>0 as atx    |       ,index(x," at "   )>0 as atx                                                 */
/*   ,instr(x," from " )>0 as fromx  |       ,index(x," from " )>0 as fromx                                               */
/*   ,instr(x," is "   )>0 as isx    |       ,index(x," is "   )>0 as isx                                                 */
/*   ,instr(x," of"    )>0 as ofx    |       ,index(x," of"    )>0 as ofx                                                 */
/*                                                                                                                        */
/*                                                                                                                        */
/* SD1.HAVE 5 OBS                                                                                                         */
/* ==============                                                                                                         */
/*                                                                                                                        */
/* ID    X                                                                                                                */
/*                                                                                                                        */
/* 1    Not to popular is simply                                                                                          */
/* 2    Latin at Hampden-Sydney                                                                                           */
/* 3    It has roots of                                                                                                   */
/* 4    literature from making it                                                                                         */
/* 5    The chunk of Lorem I                                                                                              */
/*                                                                                                                        */
/**************************************************************************************************************************/


/*                                          _
/ | ___  __ _ ___   _ __   ___    ___  __ _| |   __ _ _ __ _ __ __ _ _   _
| |/ __|/ _` / __| | `_ \ / _ \  / __|/ _` | |  / _` | `__| `__/ _` | | | |
| |\__ \ (_| \__ \ | | | | (_) | \__ \ (_| | | | (_| | |  | | | (_| | |_| |
|_||___/\__,_|___/ |_| |_|\___/  |___/\__, |_|  \__,_|_|  |_|  \__,_|\__, |
                                      |_|                         |___/
*/

proc sql;
  create
     table want as
  select
      id
     ,x
     ,index(x," to "  )>0  as tox
     ,index(x," and " )>0  as endx
     ,index(x," at "  )>0  as atx
     ,index(x," from ")>0  as fromx
     ,index(x," is "  )>0  as isx
     ,index(x," off " )>0  as offx
  from
      sd1.have
;quit;

proc print data=want;
run;quit;

/**************************************************************************************************************************/
/*                                                                                                                        */
/*   ID    X                            TOX    ENDX    ATX    FROMX    ISX    OFFX                                        */
/*                                                                                                                        */
/*    1    Not to popular is simply      1       0      0       0       1       0                                         */
/*    2    Latin at Hampden-Sydney       0       0      1       0       0       0                                         */
/*    3    It has roots of               0       0      0       0       0       0                                         */
/*    4    literature from making it     0       0      0       1       0       0                                         */
/*    5    The chunk of Lorem I          0       0      0       0       0       0                                         */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*___                                   _
|___ \   _ __   _ __   ___    ___  __ _| |   __ _ _ __ _ __ __ _ _   _
  __) | | `__| | `_ \ / _ \  / __|/ _` | |  / _` | `__| `__/ _` | | | |
 / __/  | |    | | | | (_) | \__ \ (_| | | | (_| | |  | | | (_| | |_| |
|_____| |_|    |_| |_|\___/  |___/\__, |_|  \__,_|_|  |_|  \__,_|\__, |
                                     |_|                         |___/
*/

%utl_rbeginx;
parmcards4;
library(haven)
library(sqldf)
source("c:/oto/fn_tosas9x.R")
have<-read_sas("d:/sd1/have.sas7bdat")
str(have)
want<-sqldf('
  select
      id
     ,x
     ,instr(x," to "  )>0 as tox
     ,instr(x," and " )>0 as endx
     ,instr(x," at "  )>0 as atx
     ,instr(x," from ")>0 as fromx
     ,instr(x," is "  )>0 as isx
     ,instr(x," off " )>0 as offx
  from
      have
  ')
want
fn_tosas9x(
      inp    = want
     ,outlib ="d:/sd1/"
     ,outdsn ="want"
     )
;;;;
%utl_rendx;

proc print data=want;
run;quit;

/***************************************************************************************************************************/
/*  SAME OUTPUT                                                                                                            */
/***************************************************************************************************************************/

/*____              _   _                                           _
|___ /  _ __  _   _| |_| |__   ___  _ __    _ __   ___    ___  __ _| |  __ _ _ __ _ __ __ _ _   _
  |_ \ | `_ \| | | | __| `_ \ / _ \| `_ \  | `_ \ / _ \  / __|/ _` | | / _` | `__| `__/ _` | | | |
 ___) || |_) | |_| | |_| | | | (_) | | | | | | | | (_) | \__ \ (_| | || (_| | |  | | | (_| | |_| |
|____/ | .__/ \__, |\__|_| |_|\___/|_| |_| |_| |_|\___/  |___/\__, |_| \__,_|_|  |_|  \__,_|\__, |
       |_|    |___/                                              |_|                        |___/
*/

proc datasets lib=sd1 nolist nodetails;
 delete pywant;
run;quit;

%utl_pybeginx;
parmcards4;
exec(open('c:/oto/fn_python.py').read());
have,meta = ps.read_sas7bdat('d:/sd1/have.sas7bdat');
want=pdsql('''                     \
  select                           \
      id                           \
     ,x                            \
     ,instr(x," to "  )>0 as tox   \
     ,instr(x," and " )>0 as endx  \
     ,instr(x," at "  )>0 as atx   \
     ,instr(x," from ")>0 as fromx \
     ,instr(x," is "  )>0 as isx   \
     ,instr(x," off " )>0 as offx  \
  from                             \
      have                         \
   ''');
print(want);
fn_tosas9x(want,outlib='d:/sd1/',outdsn='pywant',timeest=3);
;;;;
%utl_pyendx;

proc print data=sd1.pywant;
run;quit;

/**************************************************************************************************************************/
/*                                                                                                                        */
/*     ID                          X  tox  endx  atx  fromx  isx  offx                                                    */
/* 0  1.0   Not to popular is simply    1     0    0      0    1     0                                                    */
/* 1  2.0    Latin at Hampden-Sydney    0     0    1      0    0     0                                                    */
/* 2  3.0            It has roots of    0     0    0      0    0     0                                                    */
/* 3  4.0  literature from making it    0     0    0      1    0     0                                                    */
/* 4  5.0       The chunk of Lorem I    0     0    0      0    0     0                                                    */
/*                                                                                                                        */
/**************************************************************************************************************************/

/*  _                               _
| || |    ___  __ _ ___   ___  __ _| |   __ _ _ __ _ __ __ _ _   _
| || |_  / __|/ _` / __| / __|/ _` | |  / _` | `__| `__/ _` | | | |
|__   _| \__ \ (_| \__ \ \__ \ (_| | | | (_| | |  | | | (_| | |_| |
   |_|   |___/\__,_|___/ |___/\__, |_|  \__,_|_|  |_|  \__,_|\__, |
                                 |_|                         |___/
*/

%array(_wrd,values=to and at from is of);

proc sql;
  create
    table want as
  select
    id
   ,x
   ,%do_over(_wrd,phrase=
      index(x," ? "  )>0 as ?x
     ,between=comma)
  from
      sd1.have
;quit;

proc print data=sd1.pywant;
run;quit;

/***************************************************************************************************************************/
/*  SAME OUTPUT                                                                                                            */
/***************************************************************************************************************************/

/*___                     _
| ___|   _ __   ___  __ _| |   __ _ _ __ _ __ __ _ _   _
|___ \  | `__| / __|/ _` | |  / _` | `__| `__/ _` | | | |
 ___) | | |    \__ \ (_| | | | (_| | |  | | | (_| | |_| |
|____/  |_|    |___/\__, |_|  \__,_|_|  |_|  \__,_|\__, |
                       |_|                         |___/
*/

%array(_wrd,values=to and at from is of);

%let sqlCde=
  %do_over(_wrd
    ,phrase=instr(x," ? "  )>0 as ?x
     ,between = comma);

%put &=sqlCde;

%utl_rbeginx;
parmcards4;
library(haven)
library(sqldf)
source("c:/oto/fn_tosas9x.R")
have<-read_sas("d:/sd1/have.sas7bdat")
str(have)
want<-sqldf('
  select
      id
     ,x
     ,&sqlCde
  from
      have
  ')
want
fn_tosas9x(
      inp    = want
     ,outlib ="d:/sd1/"
     ,outdsn ="rwant"
     )
;;;;
%utl_rendx;

proc print data=sd1.rwant;
run;quit;

/***************************************************************************************************************************/
/*  SAME OUTPUT                                                                                                            */
/***************************************************************************************************************************/

/*__                 _   _                             _
 / /_    _ __  _   _| |_| |__   ___  _ __    ___  __ _| |   __ _ _ __ _ __ __ _ _   _
| `_ \  | `_ \| | | | __| `_ \ / _ \| `_ \  / __|/ _` | |  / _` | `__| `__/ _` | | | |
| (_) | | |_) | |_| | |_| | | | (_) | | | | \__ \ (_| | | | (_| | |  | | | (_| | |_| |
 \___/  | .__/ \__, |\__|_| |_|\___/|_| |_| |___/\__, |_|  \__,_|_|  |_|  \__,_|\__, |
        |_|    |___/                                |_|                         |___/
*/

%array(_wrd,values=to and at from is of);

%let sqlCde=
  %do_over(_wrd
    ,phrase=instr(x," ? "  )>0 as ?x
     ,between = comma);

%put &=sqlCde;

proc datasets lib=sd1 nolist nodetails;
 delete pywant;
run;quit;

%utl_pybeginx;
parmcards4;
exec(open('c:/oto/fn_python.py').read())
have,meta = ps.read_sas7bdat('d:/sd1/have.sas7bdat')
print(have)
want=pdsql('''                     \
  select                           \
      id                           \
     ,x                            \
     ,&sqlCde                      \
  from                             \
      have                         \
    ''')
print(want);
fn_tosas9x(want,outlib='d:/sd1/',outdsn='pywant',timeest=3);
;;;;
%utl_pyendx(resolve=Y);

proc print data=sd1.pywant;
run;quit;

/***************************************************************************************************************************/
/*  SAME OUTPUT                                                                                                            */
/***************************************************************************************************************************/

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/
