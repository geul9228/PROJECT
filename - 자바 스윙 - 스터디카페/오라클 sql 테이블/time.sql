--------------------------------------------------------
--  颇老捞 积己凳 - 格夸老-4岿-08-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table TIME
--------------------------------------------------------

  CREATE TABLE "HG"."TIME" 
   (	"ID" VARCHAR2(20 BYTE), 
	"TIME" NUMBER DEFAULT NULL, 
	"NUM" NUMBER(20,0) DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1 BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "USERS" ;
--------------------------------------------------------
--  Ref Constraints for Table TIME
--------------------------------------------------------

  ALTER TABLE "HG"."TIME" ADD CONSTRAINT "TIME_FK1" FOREIGN KEY ("ID")
	  REFERENCES "HG"."MEMBER" ("USERNAME") ON DELETE CASCADE ENABLE;
