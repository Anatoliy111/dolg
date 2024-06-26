SET NAMES WIN1251;

SET CLIENTLIB 'C:\Windows\System32\gds32.dll';

CONNECT 'D:\WORK\KOMUN\dolg\DOLG.GDB' USER 'sysdba' PASSWORD 'masterkey';

SET AUTODDL ON;

RECONNECT;

/* Drop: KART_IDX1 (TIdxData) */
DROP INDEX KART_IDX1;

RECONNECT;

/* Drop: KART_IDX2 (TIdxData) */
DROP INDEX KART_IDX2;

RECONNECT;

/* Drop: KART_IDX3 (TIdxData) */
DROP INDEX KART_IDX3;

RECONNECT;

/* Drop: NACH_IDX1 (TIdxData) */
DROP INDEX NACH_IDX1;

RECONNECT;

/* Drop: NOTE_IDX1 (TIdxData) */
DROP INDEX NOTE_IDX1;

RECONNECT;

/* Drop: OBOR_IDX1 (TIdxData) */
DROP INDEX OBOR_IDX1;

RECONNECT;

/* Drop: TMPNACH_IDX1 (TIdxData) */
DROP INDEX TMPNACH_IDX1;

RECONNECT;

/* Drop: TMPOPL_IDX1 (TIdxData) */
DROP INDEX TMPOPL_IDX1;

RECONNECT;

/* Drop: TMPSUBS_IDX1 (TIdxData) */
DROP INDEX TMPSUBS_IDX1;

RECONNECT;

/* Drop: TMPUDER_IDX1 (TIdxData) */
DROP INDEX TMPUDER_IDX1;


/* Drop View... */
DROP VIEW VW_ADRES;

DROP VIEW VW_OBOR;


RECONNECT;

/* Drop tables... */
DROP TABLE KART;

DROP TABLE NACH;

DROP TABLE OBOR;

DROP TABLE OBORMES;

DROP TABLE ORGAN;

DROP TABLE TMPDATE;

DROP TABLE TMPNACH;

DROP TABLE TMPOBOR;

DROP TABLE TMPOPL;

DROP TABLE TMPSUBS;

DROP TABLE TMPUDER;

DROP TABLE TMPWID;

DROP TABLE WID;


/* Dropping generators... */
DROP GENERATOR GEN_KART_ID;

DROP GENERATOR GEN_NACH_ID;

DROP GENERATOR GEN_NOTE_ID;

DROP GENERATOR GEN_OBOR_ID;

DROP GENERATOR GEN_OBORMES_ID;

DROP GENERATOR GEN_ORGAN_ID;

DROP GENERATOR GEN_TMPDATE_ID;

DROP GENERATOR GEN_TMPKART_ID;

DROP GENERATOR GEN_TMPNACH_ID;

DROP GENERATOR GEN_TMPOBOR_ID;

DROP GENERATOR GEN_TMPOPL_ID;

DROP GENERATOR GEN_TMPSUBS_ID;

DROP GENERATOR GEN_TMPUDER_ID;

DROP GENERATOR GEN_TMPWID_ID;

DROP GENERATOR GEN_WID_ID;


/* DROP: -- GRANT ALL ON VW_ADRES TO SYSDBA WITH GRANT OPTION */
REVOKE ALL ON VW_ADRES FROM SYSDBA;

/* DROP: -- GRANT ALL ON VW_OBOR TO SYSDBA WITH GRANT OPTION */
REVOKE ALL ON VW_OBOR FROM SYSDBA;





/* Create Table... */
CREATE TABLE KART(SCHET VARCHAR(10),
NUMB VARCHAR(8),
FIO VARCHAR(45),
IM VARCHAR(15),
OT VARCHAR(15),
FIO_V VARCHAR(35),
IDCOD VARCHAR(32),
CEX VARCHAR(3),
TABN VARCHAR(5),
FIO_TABN VARCHAR(20),
LG_NOFAM VARCHAR(1),
KOLI_LG VARCHAR(8),
KOLI_P DOUBLE PRECISION,
KOLI_PF DOUBLE PRECISION,
KOLI_K DOUBLE PRECISION,
PLOS_BB DOUBLE PRECISION,
PLOS_OB DOUBLE PRECISION,
PRIV VARCHAR(1),
ETAG DOUBLE PRECISION,
LGOTA VARCHAR(9),
LG_POSV VARCHAR(25),
LG_SER VARCHAR(12),
LG_FIO VARCHAR(45),
LG_DATE VARCHAR(33),
LG_KAT VARCHAR(12),
FL_CHERN VARCHAR(1),
FL_LIFTE VARCHAR(1),
FL_LIFTO VARCHAR(1),
FL_KLET VARCHAR(1),
FL_MUSO VARCHAR(1),
FL_OSV VARCHAR(1),
FL_UBOR VARCHAR(1),
FL_VENT VARCHAR(1),
FL_ZIMA VARCHAR(1),
FL_REM VARCHAR(1),
FL_DITM VARCHAR(1),
FL_TUAL VARCHAR(1),
FL_NOLIFT VARCHAR(1),
FL_NOKAN VARCHAR(1),
MAX_UD DOUBLE PRECISION,
NOM DOUBLE PRECISION,
ORG DOUBLE PRECISION,
D_DOG VARCHAR(8),
N_DOG VARCHAR(20),
ZAYA VARCHAR(1),
RESTR VARCHAR(1),
NOTE VARCHAR(64),
NOTE1 VARCHAR(64),
FLAG VARCHAR(1),
WOZW_OT_ DOUBLE PRECISION,
TELEF VARCHAR(20),
KL_UL DOUBLE PRECISION,
ULNAIM VARCHAR(64),
NOMDOM VARCHAR(5),
NOMKV VARCHAR(5),
VAL DOUBLE PRECISION,
KL INTEGER NOT NULL,
UPD INTEGER);

CREATE TABLE NOTETMP(WID VARCHAR(10),
SCHET VARCHAR(10),
NOTE1 INTEGER,
NOTE2 INTEGER,
NOTE3 VARCHAR(200),
KL_USERS INTEGER);

INSERT INTO notetmp (wid, schet,NOTE1,NOTE2,NOTE3,KL_USERS) select wid, schet,NOTE1,NOTE2,NOTE3,KL_USERS from note;
delete from NOTE;


CREATE TABLE OBOR(SCHET VARCHAR(10),
WID VARCHAR(2),
FIO VARCHAR(25),
KOEF DOUBLE PRECISION,
TARIF DOUBLE PRECISION,
BL VARCHAR(1),
SU_DT DATE,
SU_DOLG0 DOUBLE PRECISION,
SU_DOLG DOUBLE PRECISION,
SU_DTR DATE,
SU_NR VARCHAR(16),
SU_PERIOD VARCHAR(30),
SU_VIDM DOUBLE PRECISION,
N_DOG VARCHAR(10),
D_DOG VARCHAR(8),
DOLG DOUBLE PRECISION,
NACH DOUBLE PRECISION,
NACH_FULL DOUBLE PRECISION,
WOZB DOUBLE PRECISION,
SUBS DOUBLE PRECISION,
KOMP DOUBLE PRECISION,
FL1 VARCHAR(1),
OPL DOUBLE PRECISION,
OPL_UD DOUBLE PRECISION,
OPL_DT DATE,
UDER DOUBLE PRECISION,
WOZW DOUBLE PRECISION,
WOZW_KAS DOUBLE PRECISION,
WZMZ DOUBLE PRECISION,
PERE DOUBLE PRECISION,
PLOMB VARCHAR(1),
MOVW DOUBLE PRECISION,
NORMA DOUBLE PRECISION,
NEWREC DOUBLE PRECISION,
SAL DOUBLE PRECISION,
KL INTEGER NOT NULL,
PERIOD DATE,
UPD INTEGER);



CREATE TABLE OPL(FL DOUBLE PRECISION,
SCHET VARCHAR(10),
FL_GROPL DOUBLE PRECISION,
OPL DOUBLE PRECISION,
RAH VARCHAR(7),
YM DOUBLE PRECISION,
ID DOUBLE PRECISION,
OPL_R DOUBLE PRECISION,
OPL_EL DOUBLE PRECISION,
OPL_HV DOUBLE PRECISION,
OPL_KV DOUBLE PRECISION,
OPL_OM DOUBLE PRECISION,
OPL_OT DOUBLE PRECISION,
OPL_RS DOUBLE PRECISION,
OPL_SM DOUBLE PRECISION,
OPL_SN DOUBLE PRECISION,
OPL_SU DOUBLE PRECISION,
OPL_UB DOUBLE PRECISION,
WZMZ VARCHAR(1),
PACH DOUBLE PRECISION,
DT DATE,
RESTR VARCHAR(1),
NOTE VARCHAR(44),
KL INTEGER NOT NULL,
UPD INTEGER);


CREATE TABLE ORGAN(ORG DOUBLE PRECISION,
NAME VARCHAR(55),
RUK VARCHAR(35),
DOLGR VARCHAR(15),
NAMER VARCHAR(55),
RUKR VARCHAR(25),
UD_K VARCHAR(1),
UD_E VARCHAR(1),
ADR VARCHAR(25),
GRP DOUBLE PRECISION,
VAL DOUBLE PRECISION,
KL INTEGER NOT NULL,
UPD INTEGER);


CREATE TABLE UL(KL DOUBLE PRECISION,
UL VARCHAR(64),
VAL DOUBLE PRECISION,
UPD INTEGER);


CREATE TABLE WID(WID VARCHAR(2),
ID_ORG DOUBLE PRECISION,
NAIM VARCHAR(15),
SNAIM VARCHAR(8),
PAR VARCHAR(10),
FL0 VARCHAR(1),
FL VARCHAR(1),
NPP DOUBLE PRECISION,
FL_NONACH VARCHAR(1),
FL_NOOPL VARCHAR(1),
FL_VTCH VARCHAR(1),
FL_NOOBOR VARCHAR(1),
FL_GROPL DOUBLE PRECISION,
FL_SUBS DOUBLE PRECISION,
VAL DOUBLE PRECISION);


/* Create view */
CREATE VIEW VW_KART(
    KONTROL,
    SCHET,
    FIO,
    IDCOD,
    ORGAN,
    LG_NOFAM,
    KOLI_LG,
    KOLI_P,
    KOLI_PF,
    KOLI_K,
    PLOS_BB,
    PLOS_OB,
    PRIV,
    ETAG,
    LGOTA,
    LG_POSV,
    LG_SER,
    LG_FIO,
    LG_DATE,
    LG_KAT,
    FL_NOLIFT,
    ORG,
    FLAG,
    TELEF,
    KL_UL,
    ULNAIM,
    NOMDOM,
    NOMKV,
    lift)
AS
select 
    kontrol.fio kontrol,
    kart.schet,
    coalesce(trim(kart.fio),'') || ' ' || coalesce(trim(kart.im),'') || ' ' || coalesce(trim(kart.ot),'') fio,
    kart.idcod,
    organ.name ORGAN,
    kart.lg_nofam,
    kart.koli_lg,
    kart.koli_p,
    kart.koli_pf,
    kart.koli_k,
    kart.plos_bb,
    kart.plos_ob,
    kart.priv,
    kart.etag,
    kart.lgota,
    kart.lg_posv,
    kart.lg_ser,
    kart.lg_fio,
    kart.lg_date,
    kart.lg_kat,
    kart.fl_nolift,
    kart.org,
    kart.flag,
    kart.telef,
    kart.kl_ul,
    kart.ulnaim,
    kart.nomdom,
    kart.nomkv,
    kart.lift
from kart
left join adres on (kart.nomdom = adres.dom) and (kart.ulnaim = adres.ul)
left join kontrol on (adres.kl_kontrol = kontrol.kl)
left join organ on (kart.org = organ.org) and (organ.upd = 1)
where kart.upd=1
order by kart.schet
;


CREATE VIEW VW_OBKR(
    KL,
    PERIOD,
    KONTROL,
    SCHET,
    WID,
    POSLUG,
    FIO,
    ULNAIM,
    NOMDOM,
    NOMKV,
    ORG,
    IDCOD,
    KOLI_P,
    KOLI_PF,
    LGOTA,
    N_DOG,
    D_DOG,
    TARIF,
    DOLG,
    NACH,
    SUBS,
    OPL,
    UDER,
    KOMP,
    WZMZ,
    WOZW,
    MOVW,
    PERE,
    SAL,
    BGST,
    PRST,
    BGEND,
    PREND,
    FULLNACH,
    FULLOPL,
    OPLNOTSUBS)
AS
select
    obor.kl,
    obor.period,
    kontrol.fio kontrol, 
    obor.schet,
    obor.wid,
    wid.naim poslug,
    coalesce(trim(kart.fio),'') || ' ' || coalesce(trim(kart.im),'') || ' ' || coalesce(trim(kart.ot),'') fio,
    kart.ulnaim,
    kart.nomdom,
    kart.nomkv,
    kart.org,
    kart.idcod,
    kart.koli_p,
    kart.koli_pf,
    kart.lgota,
    obor.n_dog,
    obor.d_dog,
    obor.tarif,
    obor.dolg,
    obor.nach,
    obor.subs,
    obor.opl,
    obor.uder,
    obor.komp,
    obor.wzmz,
    obor.wozw,
    obor.movw,
    obor.pere,
    obor.sal,
    case when obor.dolg > 0  then obor.dolg else 0 end AS bgst,
    case when obor.dolg < 0  then obor.dolg else 0 end AS prst,
    case when obor.sal > 0  then obor.sal else 0 end AS bgend,
    case when obor.sal < 0  then obor.sal else 0 end AS prend,
    obor.nach+obor.pere as fullnach,
    obor.SUBS+obor.OPL+obor.UDER+obor.KOMP+obor.WZMZ as fullopl,
    obor.OPL+obor.UDER+obor.KOMP+obor.WZMZ as oplnotsubs
from obor
left join kart on (obor.schet=kart.schet) and (kart.upd=1)
left join wid on (obor.wid=wid.wid)
left join adres on (kart.nomdom = adres.dom) and (kart.ulnaim = adres.ul)
left join kontrol on (adres.kl_kontrol = kontrol.kl)

where obor.upd=1
order by obor.schet
;

CREATE VIEW VW_OBOR(
    KL,
    PERIOD,
    SCHET,
    WID,
    N_DOG,
    D_DOG,
    TARIF,
    DOLG,
    NACH,
    SUBS,
    OPL,
    UDER,
    KOMP,
    WZMZ,
    WOZW,
    MOVW,
    PERE,
    SAL,
    BGST,
    PRST,
    BGEND,
    PREND,
    FULLNACH,
    FULLOPL,
    OPLNOTSUBS)
AS
select
    obor.kl,
    obor.period,
    obor.schet,
    obor.wid,
    obor.n_dog,
    obor.d_dog,
    obor.tarif,
    obor.dolg,
    obor.nach,
    obor.subs,
    obor.opl,
    obor.uder,
    obor.komp,
    obor.wzmz,
    obor.wozw,
    obor.movw,
    obor.pere,
    obor.sal,
    case when obor.dolg > 0  then obor.dolg else 0 end AS bgst,
    case when obor.dolg < 0  then obor.dolg else 0 end AS prst,
    case when obor.sal > 0  then obor.sal else 0 end AS bgend,
    case when obor.sal < 0  then obor.sal else 0 end AS prend,
    obor.nach+obor.pere as fullnach,
    obor.SUBS+obor.OPL+obor.UDER+obor.KOMP+obor.WZMZ as fullopl,
    obor.OPL+obor.UDER+obor.KOMP+obor.WZMZ as oplnotsubs
from obor order by obor.schet
;




/* Create index... */

CREATE INDEX KART_IDX1 ON KART(SCHET);

CREATE INDEX NOTE_IDX1 ON NOTE(SCHET, WID);

CREATE INDEX OBOR_IDX1 ON OBOR(SCHET, WID);

CREATE INDEX OPL_IDX1 ON OPL(SCHET);

CREATE INDEX ORGAN_IDX1 ON ORGAN(ORG);

CREATE INDEX UL_IDX1 ON UL(KL);


/* Create generator... */
CREATE GENERATOR GEN_KART_ID;

CREATE GENERATOR GEN_NOTE_ID;

CREATE GENERATOR GEN_OBOR_ID;

CREATE GENERATOR GEN_OPL_ID;

CREATE GENERATOR GEN_ORGAN_ID;


/* Create Primary Key... */
ALTER TABLE KART ADD PRIMARY KEY (KL);

ALTER TABLE OBOR ADD PRIMARY KEY (KL);

ALTER TABLE OPL ADD PRIMARY KEY (KL);

ALTER TABLE ORGAN ADD PRIMARY KEY (KL);

ALTER TABLE NOTE ADD CONSTRAINT PK_NOTE PRIMARY KEY (KL);

ALTER TABLE PERIOD ADD CONSTRAINT PK_PERIOD PRIMARY KEY (KL);

ALTER TABLE ADRES ADD KL_UL INTEGER;

/* Creating trigger... */
SET TERM ^ ;


CREATE OR ALTER TRIGGER ADRES_BI FOR ADRES
ACTIVE BEFORE INSERT POSITION 0
AS
begin
  if (new.kl is null) then
    new.kl = gen_id(gen_adres_id,1);
end
^

CREATE TRIGGER KART_BI FOR KART
ACTIVE BEFORE INSERT POSITION 0 
as
begin
  if (new.kl is null) then
    new.kl = gen_id(gen_kart_id,1);
end
^

CREATE TRIGGER NOTE_BI FOR NOTE
ACTIVE BEFORE INSERT POSITION 0 
as
begin
  if (new.kl is null) then
    new.kl = gen_id(gen_note_id,1);
end
^

CREATE TRIGGER OBOR_BI FOR OBOR
ACTIVE BEFORE INSERT POSITION 0 
as
begin
  if (new.kl is null) then
    new.kl = gen_id(gen_obor_id,1);
end
^

CREATE TRIGGER OPL_BI FOR OPL
ACTIVE BEFORE INSERT POSITION 0 
as
begin
  if (new.kl is null) then
    new.kl = gen_id(gen_opl_id,1);
end
^

CREATE TRIGGER ORGAN_BI FOR ORGAN
ACTIVE BEFORE INSERT POSITION 0 
as
begin
  if (new.kl is null) then
    new.kl = gen_id(gen_organ_id,1);
end
^

CREATE TRIGGER PERIOD_BI FOR PERIOD
ACTIVE BEFORE INSERT POSITION 0 
as
begin
  if (new.kl is null) then
    new.kl = gen_id(gen_period_id,1);
end
^


/* Create(Add) privilege */
SET TERM ; ^

GRANT ALL ON KART TO SYSDBA WITH GRANT OPTION;

GRANT ALL ON NOTE TO SYSDBA WITH GRANT OPTION;

GRANT ALL ON OBOR TO SYSDBA WITH GRANT OPTION;

GRANT ALL ON OPL TO SYSDBA WITH GRANT OPTION;

GRANT ALL ON ORGAN TO SYSDBA WITH GRANT OPTION;

GRANT ALL ON UL TO SYSDBA WITH GRANT OPTION;

GRANT ALL ON WID TO SYSDBA WITH GRANT OPTION;

INSERT INTO note (wid, schet,NOTE1,NOTE2,NOTE3,KL_USERS) select wid, schet,NOTE1,NOTE2,NOTE3,KL_USERS from notetmp;
drop table NOTETMP;

delete from kart where schet not in (select schet from obor);

/*update ADRES set ADRES.kl_ul = (select kl from UL T1 where T1.ul=ADRES.ul)*/




