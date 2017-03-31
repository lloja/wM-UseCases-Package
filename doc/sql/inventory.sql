--------------------------------------------------------
--  File created - Thursday-December-29-2016
--------------------------------------------------------
--------------------------------------------------------
--  DDL for Table INVENTORY
--------------------------------------------------------

CREATE TABLE INVENTORY
   (	"PRODUCTID" NUMBER,
	"PRODUCTNAME" VARCHAR2(50 BYTE),
	"PRODUCTDESCRIPTION" VARCHAR2(250 BYTE),
	"QUANTITY" NUMBER
);

INSERT INTO INVENTORY (PRODUCTID,PRODUCTNAME,PRODUCTDESCRIPTION,QUANTITY) VALUES (1,'Bag','Hand Bag',100);
INSERT INTO INVENTORY (PRODUCTID,PRODUCTNAME,PRODUCTDESCRIPTION,QUANTITY) VALUES (2,'Suitcase','Hard Shell Suitcase',100);
