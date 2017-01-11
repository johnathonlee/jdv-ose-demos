DROP TABLE accountholdings;
DROP TABLE account;
DROP TABLE customer;

--
-- Table structure for table account
--

CREATE TABLE account (
  accountid decimal(18,0) NOT NULL,
  customerid varchar2(12) NOT NULL,
  accounttype varchar2(10) DEFAULT NULL,
  accountstatus varchar2(10) DEFAULT NULL,
  dateopened timestamp NOT NULL,
  dateclosed timestamp DEFAULT NULL,
  PRIMARY KEY (accountid)
);

--
-- Table structure for table accountholdings
--

CREATE TABLE accountholdings (
  transactionid varchar2(12) NOT NULL,
  accountid decimal(18,0) NOT NULL,
  productid varchar2(12) NOT NULL,
  purchasedate timestamp NOT NULL,
  productshares decimal(20,6) DEFAULT NULL,
  PRIMARY KEY (transactionid)
);


--
-- Table structure for table customer
--

CREATE TABLE customer (
  customerid varchar2(12) NOT NULL,
  firstname varchar2(25) NOT NULL,
  lastname varchar2(25) NOT NULL,
  middlename varchar2(15) DEFAULT NULL,
  streetaddress varchar2(50) NOT NULL,
  streetaddress2 varchar2(50) DEFAULT NULL,
  city varchar2(25) NOT NULL,
  stateprovince varchar2(25) DEFAULT NULL,
  postalcode varchar2(15) NOT NULL,
  country varchar2(10) DEFAULT NULL,
  phonenumber varchar2(30) DEFAULT NULL,
  PRIMARY KEY (customerid)
);

-- ------------ CREATE CONSTRAINTS -------------------------

ALTER TABLE accountholdings ADD CONSTRAINT FK_Acctholdings_AcctID FOREIGN KEY (accountid)
      REFERENCES account (accountid);

ALTER TABLE account ADD CONSTRAINT FK_Account_AcctID FOREIGN KEY (customerid)
      REFERENCES customer (customerid);

--
-- Dumping data for table customer
--

INSERT INTO customer VALUES ('CST01010','Ian','Hardy','Thomas','120 Hanover Square',NULL,'London',NULL,'WA1 1DP','UK','(171)555-8181');
INSERT INTO customer VALUES ('CST01011','Elizabeth','Ashworth','Brown','1817 Chancelor Road',NULL,'London',NULL,'OX15 4NB','UK','(171)555-1870');
INSERT INTO customer VALUES ('CST01012','Alfred','Teagarden','Lloyd','12 Berkeley Gardens','Flat 25','Westminster',NULL,'SW7 1EZ','UK','(199)555-1720');
INSERT INTO customer VALUES ('CST01013','Amelia','Lindberg','Anne','95 Wadhurst Road',NULL,'Farnborough',NULL,'GU14 4LT','UK','(186)555-6709');
INSERT INTO customer VALUES ('CST01014','Jack','Crowther','Devon','450 Queensbridge Lane',NULL,'Scorborough',NULL,'YO2 5SC','UK','(165)555-5402');
INSERT INTO customer VALUES ('CST01016','Jean','LaRue','Claude','54 Rue St. Laurent','Apartment 66','Montreal','Quebec','H1J 1C3','Canada','(514)555-9120');
INSERT INTO customer VALUES ('CST01017','Alejandro','Carmino',NULL,'Gran Via, 1',NULL,'Madrid',NULL,'28011','Spain','(91)555-6225 ');
INSERT INTO customer VALUES ('CST01018','Edwardo','Salvedore','Diego','Rambla de Cataluna, 58',NULL,'Barcelona',NULL,'08022','Spain','(93)555-2367');
INSERT INTO customer VALUES ('CST01023','Marie','Bertrande',NULL,'78, rue de la Maison',NULL,'Paris',NULL,'75012','France','(1)45.23.68.89');
INSERT INTO customer VALUES ('CST01024','Herbert','MeCustomerIDer','Charles','Obere Street, 92',NULL,'Berlin',NULL,'12210','Germany','0300-076548');
INSERT INTO customer VALUES ('CST01025','Hanna','Rogers','Nancy','3500 Drouillard Road',NULL,'Windsor','Ontario','M5C 2V9','Canada','(416)555-9876');
INSERT INTO customer VALUES ('CST01026','Veronique','Treillon','Carine','705, boulevard Tigre',NULL,'Lyon',NULL,'69005','France','78.56.43.18');
INSERT INTO customer VALUES ('CST01028','Pierre','Henriotte','Claude','15, rue Alsace-Lorraine',NULL,'Toulouse',NULL,'31010','France','61.77.68.18');
INSERT INTO customer VALUES ('CST01029','Laurence','Perrier','Charles','35, rue Royale',NULL,'Marseille',NULL,'13010','France','91.24.45.67');
INSERT INTO customer VALUES ('CST01030','Sven','Mueller','Phillip','Magazinweg 67',NULL,'Frankfurt',NULL,'60550','Germany','069-0245885');
INSERT INTO customer VALUES ('CST01031','Daniel','LaBlanche',NULL,'88, place Provincial',NULL,'Paris',NULL,'75014','France','(1)47.55.65.15');
INSERT INTO customer VALUES ('CST01032','Paul','Zimmerman','David','2536 Oaklawn Avenue',NULL,'Vancouver','British Columbia','V3F 2K1','Canada','(604)555-2729');
INSERT INTO customer VALUES ('CST01033','Alexander','Franken','Horst','Berliner Platz 85',NULL,'Munich',NULL,'80806','Germany','089-0877435');

--
-- Dumping data for table account
--

INSERT INTO account VALUES ('19990010','CST01010','Personal','Active',to_timestamp('1999-10-12 00:00:00','YYYY-mm-DD HH24:MI:SS'),NULL);
INSERT INTO account VALUES ('19990011','CST01011','Personal','Active',to_timestamp('1999-11-03 00:00:00','YYYY-mm-DD HH24:MI:SS'),NULL);
INSERT INTO account VALUES ('20000012','CST01012','Personal','Active',to_timestamp('2000-01-20 00:00:00','YYYY-mm-DD HH24:MI:SS'),NULL);
INSERT INTO account VALUES ('20000013','CST01013','Personal','Active',to_timestamp('2000-02-01 00:00:00','YYYY-mm-DD HH24:MI:SS'),NULL);
INSERT INTO account VALUES ('20000014','CST01014','Personal','Active',to_timestamp('2000-03-15 00:00:00','YYYY-mm-DD HH24:MI:SS'),NULL);
INSERT INTO account VALUES ('20000016','CST01016','Personal','Active',to_timestamp('2000-05-15 00:00:00','YYYY-mm-DD HH24:MI:SS'),NULL);
INSERT INTO account VALUES ('20000017','CST01017','Personal','Active',to_timestamp('2000-07-18 00:00:00','YYYY-mm-DD HH24:MI:SS'),NULL);
INSERT INTO account VALUES ('20000018','CST01018','Personal','Active',to_timestamp('2000-07-19 00:00:00','YYYY-mm-DD HH24:MI:SS'),NULL);
INSERT INTO account VALUES ('20010023','CST01023','Personal','Active',to_timestamp('2001-02-13 00:00:00','YYYY-mm-DD HH24:MI:SS'),NULL);
INSERT INTO account VALUES ('20010024','CST01024','Personal','Active',to_timestamp('2001-05-18 00:00:00','YYYY-mm-DD HH24:MI:SS'),NULL);
INSERT INTO account VALUES ('20010025','CST01025','Personal','Closed',to_timestamp('2001-06-26 00:00:00','YYYY-mm-DD HH24:MI:SS'),to_timestamp('2002-02-22 00:00:00','YYYY-mm-DD HH24:MI:SS'));
INSERT INTO account VALUES ('20010026','CST01026','Personal','Active',to_timestamp('2001-07-25 00:00:00','YYYY-mm-DD HH24:MI:SS'),NULL);
INSERT INTO account VALUES ('20010028','CST01028','Personal','Active',to_timestamp('2001-09-04 00:00:00','YYYY-mm-DD HH24:MI:SS'),NULL);
INSERT INTO account VALUES ('20010029','CST01029','Personal','Active',to_timestamp('2001-09-18 00:00:00','YYYY-mm-DD HH24:MI:SS'),NULL);
INSERT INTO account VALUES ('20010030','CST01030','Personal','Active',to_timestamp('2001-10-11 00:00:00','YYYY-mm-DD HH24:MI:SS'),NULL);
INSERT INTO account VALUES ('20010031','CST01031','Personal','Active',to_timestamp('2001-10-25 00:00:00','YYYY-mm-DD HH24:MI:SS'),NULL);
INSERT INTO account VALUES ('20010032','CST01032','Personal','Active',to_timestamp('2001-11-09 00:00:00','YYYY-mm-DD HH24:MI:SS'),NULL);
INSERT INTO account VALUES ('20010033','CST01033','Personal','Active',to_timestamp('2001-12-06 00:00:00','YYYY-mm-DD HH24:MI:SS'),NULL);

--
-- Dumping data for table accountholdings
--

INSERT INTO accountholdings VALUES ('TXT001016','19990010','PRD01090',to_timestamp('1999-10-12 00:00:00','YYYY-mm-DD HH24:MI:SS'),'85.000000');
INSERT INTO accountholdings VALUES ('TXT001017','19990011','PRD01075',to_timestamp('1999-11-03 00:00:00','YYYY-mm-DD HH24:MI:SS'),'110.000000');
INSERT INTO accountholdings VALUES ('TXT001018','20000012','PRD01091',to_timestamp('2000-01-20 00:00:00','YYYY-mm-DD HH24:MI:SS'),'150.000000');
INSERT INTO accountholdings VALUES ('TXT001019','20000013','PRD01072',to_timestamp('2000-02-01 00:00:00','YYYY-mm-DD HH24:MI:SS'),'165.000000');
INSERT INTO accountholdings VALUES ('TXT001020','20000014','PRD01027',to_timestamp('2000-03-15 00:00:00','YYYY-mm-DD HH24:MI:SS'),'225.750000');
INSERT INTO accountholdings VALUES ('TXT001022','20000016','PRD01047',to_timestamp('2000-05-15 00:00:00','YYYY-mm-DD HH24:MI:SS'),'123.000000');
INSERT INTO accountholdings VALUES ('TXT001024','20000017','PRD01041',to_timestamp('2000-07-18 00:00:00','YYYY-mm-DD HH24:MI:SS'),'183.875000');
INSERT INTO accountholdings VALUES ('TXT001025','20000018','PRD01051',to_timestamp('2000-07-19 00:00:00','YYYY-mm-DD HH24:MI:SS'),'222.500000');
INSERT INTO accountholdings VALUES ('TXT001026','20000017','PRD01063',to_timestamp('2000-08-15 00:00:00','YYYY-mm-DD HH24:MI:SS'),'95.000000');
INSERT INTO accountholdings VALUES ('TXT001027','20000018','PRD01016',to_timestamp('2000-08-30 00:00:00','YYYY-mm-DD HH24:MI:SS'),'45.000000');
INSERT INTO accountholdings VALUES ('TXT001035','19990010','PRD01028',to_timestamp('2001-01-26 00:00:00','YYYY-mm-DD HH24:MI:SS'),'50.000000');
INSERT INTO accountholdings VALUES ('TXT001036','20010023','PRD01035',to_timestamp('2001-02-13 00:00:00','YYYY-mm-DD HH24:MI:SS'),'112.000000');
INSERT INTO accountholdings VALUES ('TXT001038','20000012','PRD01031',to_timestamp('2001-04-26 00:00:00','YYYY-mm-DD HH24:MI:SS'),'135.000000');
INSERT INTO accountholdings VALUES ('TXT001039','20010024','PRD01053',to_timestamp('2001-05-18 00:00:00','YYYY-mm-DD HH24:MI:SS'),'105.500000');
INSERT INTO accountholdings VALUES ('TXT001040','20010025','PRD01059',to_timestamp('2001-06-26 00:00:00','YYYY-mm-DD HH24:MI:SS'),'140.625000');
INSERT INTO accountholdings VALUES ('TXT001041','20010026','PRD01060',to_timestamp('2001-07-25 00:00:00','YYYY-mm-DD HH24:MI:SS'),'126.875000');
INSERT INTO accountholdings VALUES ('TXT001042','20010026','PRD01064',to_timestamp('2001-07-25 00:00:00','YYYY-mm-DD HH24:MI:SS'),'80.000000');
INSERT INTO accountholdings VALUES ('TXT001044','20010028','PRD01078',to_timestamp('2001-09-04 00:00:00','YYYY-mm-DD HH24:MI:SS'),'55.000000');
INSERT INTO accountholdings VALUES ('TXT001045','20010029','PRD01095',to_timestamp('2001-09-18 00:00:00','YYYY-mm-DD HH24:MI:SS'),'116.000000');
INSERT INTO accountholdings VALUES ('TXT001046','20010030','PRD01083',to_timestamp('2001-10-11 00:00:00','YYYY-mm-DD HH24:MI:SS'),'130.000000');
INSERT INTO accountholdings VALUES ('TXT001047','20000018','PRD01092',to_timestamp('2001-10-12 00:00:00','YYYY-mm-DD HH24:MI:SS'),'45.000000');
INSERT INTO accountholdings VALUES ('TXT001048','20010026','PRD01086',to_timestamp('2001-10-16 00:00:00','YYYY-mm-DD HH24:MI:SS'),'250.000000');
INSERT INTO accountholdings VALUES ('TXT001049','19990010','PRD01021',to_timestamp('2001-10-17 00:00:00','YYYY-mm-DD HH24:MI:SS'),'140.000000');
INSERT INTO accountholdings VALUES ('TXT001050','20010031','PRD01043',to_timestamp('2001-10-25 00:00:00','YYYY-mm-DD HH24:MI:SS'),'132.375000');
INSERT INTO accountholdings VALUES ('TXT001051','20010032','PRD01045',to_timestamp('2001-11-09 00:00:00','YYYY-mm-DD HH24:MI:SS'),'155.625000');
INSERT INTO accountholdings VALUES ('TXT001054','20010024','PRD01008',to_timestamp('2001-11-16 00:00:00','YYYY-mm-DD HH24:MI:SS'),'80.000000');
INSERT INTO accountholdings VALUES ('TXT001055','20010033','PRD01020',to_timestamp('2001-12-06 00:00:00','YYYY-mm-DD HH24:MI:SS'),'130.000000');
INSERT INTO accountholdings VALUES ('TXT001056','20010031','PRD01010',to_timestamp('2001-12-12 00:00:00','YYYY-mm-DD HH24:MI:SS'),'165.000000');
INSERT INTO accountholdings VALUES ('TXT001059','20010030','PRD01009',to_timestamp('2001-12-20 00:00:00','YYYY-mm-DD HH24:MI:SS'),'50.000000');
INSERT INTO accountholdings VALUES ('TXT001062','20000012','PRD01099',to_timestamp('2002-01-29 00:00:00','YYYY-mm-DD HH24:MI:SS'),'175.000000');
INSERT INTO accountholdings VALUES ('TXT001068','19990011','PRD01094',to_timestamp('2002-03-07 00:00:00','YYYY-mm-DD HH24:MI:SS'),'102.000000');
INSERT INTO accountholdings VALUES ('TXT001073','20010029','PRD01077',to_timestamp('2002-03-28 00:00:00','YYYY-mm-DD HH24:MI:SS'),'210.000000');
INSERT INTO accountholdings VALUES ('TXT001074','20010032','PRD01080',to_timestamp('2002-04-01 00:00:00','YYYY-mm-DD HH24:MI:SS'),'192.000000');



