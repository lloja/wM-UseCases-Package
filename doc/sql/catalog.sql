--------------------------------------------------------
--  File created - Thursday-December-29-2016
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table CATALOG
--------------------------------------------------------
CREATE TABLE CATALOG
   (	"ID" VARCHAR2(20 BYTE),
	"PRODUCT" VARCHAR2(50 BYTE),
	"DESCRIPTION" VARCHAR2(250 BYTE),
  "UNITPRICE" NUMBER
);

INSERT INTO CATALOG (ID,PRODUCT,DESCRIPTION) VALUES ('1','Bag','Hand Bag');
INSERT INTO CATALOG (ID,PRODUCT,DESCRIPTION) VALUES ('2','Suitcase','Hard Shell Suitcase');
