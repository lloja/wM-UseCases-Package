--------------------------------------------------------
--  File created - Thursday-December-29-2016
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table ORDERS
--------------------------------------------------------

CREATE TABLE ORDERS
   (	"ID" NUMBER,
	"RECIPIENTNAME" VARCHAR2(50 BYTE),
	"EMAILADDRESS" VARCHAR2(80 BYTE),
	"ADDRESS" VARCHAR2(100 BYTE),
	"CITY" VARCHAR2(50 BYTE),
	"POSTCODE" VARCHAR2(20 BYTE),
	"COUNTRY" VARCHAR2(20 BYTE),
	"RECEIVEORDER" VARCHAR2(20 BYTE),
	"FILLORDER" VARCHAR2(20 BYTE),
	"SENDINVOICE" VARCHAR2(20 BYTE),
	"SHIPORDER" VARCHAR2(20 BYTE),
	"ACCEPTPAYMENT" VARCHAR2(20 BYTE),
	"CLOSEORDER" VARCHAR2(20 BYTE),
	"ORDERREJECTREASON" VARCHAR2(250 BYTE),
	"RECEIVEDATE" TIMESTAMP (6),
	"DELIVERYDATE" TIMESTAMP (6),
	"TOTALCOST" NUMBER
) ;
--------------------------------------------------------
--  DDL for Index PK_ORDERS_ID
--------------------------------------------------------

  CREATE UNIQUE INDEX PK_ORDERS_ID ON ORDERS ("ID");
--------------------------------------------------------
--  Constraints for Table ORDERS
--------------------------------------------------------

  ALTER TABLE ORDERS ADD CONSTRAINT "PK_ORDERS_ID" PRIMARY KEY ("ID") ENABLE;

  --------------------------------------------------------
--  Sequence ORDER_SEQ
--------------------------------------------------------

   CREATE SEQUENCE  ORDER_SEQ  MINVALUE 1 MAXVALUE 9999999999999999999999999999 INCREMENT BY 1 START WITH 1 NOCACHE  NOORDER  NOCYCLE  NOPARTITION;
--------------------------------------------------------
--  DDL for Trigger TRG_ORDERS
--------------------------------------------------------

CREATE OR REPLACE EDITIONABLE TRIGGER TRG_ORDERS
BEFORE INSERT ON orders
FOR EACH ROW

BEGIN
  SELECT order_seq.NEXTVAL
  INTO   :new.id
  FROM   dual;
END;
/
ALTER TRIGGER TRG_ORDERS ENABLE;
