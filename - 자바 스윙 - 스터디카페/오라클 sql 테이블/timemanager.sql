--------------------------------------------------------
--  颇老捞 积己凳 - 格夸老-4岿-08-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TIMEMANAGER
--------------------------------------------------------

  CREATE TABLE "HG"."TIMEMANAGER" 
   (	"ID" VARCHAR2(20 BYTE), 
	"TIME1" TIMESTAMP (6), 
	"TIME2" TIMESTAMP (6), 
	"SEAT" NUMBER(3,0) DEFAULT 0, 
	"NUM" NUMBER(10,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "SYSTEM" ;
--------------------------------------------------------
--  Ref Constraints for Table TIMEMANAGER
--------------------------------------------------------

  ALTER TABLE "HG"."TIMEMANAGER" ADD CONSTRAINT "TIMEMANAGER_FK1" FOREIGN KEY ("ID")
	  REFERENCES "HG"."MEMBER" ("USERNAME") ON DELETE CASCADE ENABLE;
