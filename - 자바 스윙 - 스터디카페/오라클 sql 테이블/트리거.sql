--------------------------------------------------------
--  颇老捞 积己凳 - 格夸老-4岿-08-2021   
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Trigger ADDID
--------------------------------------------------------

  CREATE OR REPLACE TRIGGER "HG"."ADDID" AFTER insert on member
begin
insert into time(ID,num) VALUES('',TIME_NUM.NEXTVAL);
insert into TIMEMANAGER(ID,num) VALUES('',TIMER_NUM.NEXTVAL);
end addID;


/
ALTER TRIGGER "HG"."ADDID" ENABLE;
