/* Server version: WI-V6.3.7.18553 Firebird 2.1 
   SQLDialect: 3. ODS: 11.1. Forced writes: On. Sweep interval: 20000.
   Page size: 16384. Cache pages: 2048 (32768 Kb). Read-only: False. */
SET NAMES NONE;

SET SQL DIALECT 3;

CONNECT 'D:\WORK\KOMUN\dolg\DOLG.GDB' USER 'sysdba' PASSWORD 'masterkey';

SET AUTODDL ON;

/* Create Table... */
CREATE TABLE LG_COD(ID INTEGER NOT NULL,
WID VARCHAR(2),
COD INTEGER);


/* Create generator... */
CREATE GENERATOR GEN_LG_COD_ID;


/* Create Primary Key... */
ALTER TABLE LG_COD ADD CONSTRAINT PK_LG_COD PRIMARY KEY (ID);

/* Creating trigger... */
SET TERM ^ ;

CREATE TRIGGER LG_COD_BI FOR LG_COD
ACTIVE BEFORE INSERT POSITION 0 
as
begin
  if (new.id is null) then
    new.id = gen_id(GEN_LG_COD_ID,1);
end



