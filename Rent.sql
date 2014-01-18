drop table ward;
drop table property;
drop table tenant;
drop table payment;

CREATE TABLE PROPERTY
(PROPERTY_ID CHAR(8) NOT NULL,
STREET VARCHAR2(25) NOT NULL,
ESTATE VARCHAR2(20),
AREA VARCHAR2(20),
TOWN VARCHAR2(20) NOT NULL,
POSTCODE VARCHAR2(8) NOT NULL,
RENT_PW NUMBER(6,2) NOT NULL,
WATER_RATES NUMBER(4,2) NOT NULL,
SERVICE_CHARGE NUMBER(4,2),
MISC_CHARGE NUMBER(4,2),
TOTAL_RENT NUMBER(6,2))
/

CREATE TABLE TENANT  
(PROPERTY_ID CHAR(8) NOT NULL,
SURNAME VARCHAR2(25) NOT NULL,
FORENAMES VARCHAR2(25) NOT NULL,
DOB DATE NOT NULL,      
STDATE DATE NOT NULL,  
ENDDATE DATE,    
AMT_OUTST NUMBER(6,2))
/

CREATE TABLE PAYMENT
(PAYMENT_ID CHAR(8) NOT NULL,
PAYDATE DATE NOT NULL,     
PAYTIME CHAR(8) NOT NULL,
PAYAMT NUMBER(6,2) NOT NULL,
PAYTYPE CHAR(1) NOT NULL)
/

INSERT INTO PROPERTY
VALUES ('A1010001','Alison Hill','Plains Farm','South Hylton','Sunderland','SR5 6PF',
29.50,3.12,NULL,NULL,32.62);
INSERT INTO PROPERTY
VALUES ('A1010003','Alison Hill','Plains Farm', 'South Hylton','Sunderland','SR5 6PF',
30.00,3.50,1.75,NULL,35.25);
INSERT INTO PROPERTY
VALUES ('A1010005','Alison Hill','Plains Farm', 'South Hylton','Sunderland','SR5 8PF',
29.50,3.12,1.50,.67,34.79);
INSERT INTO PROPERTY
VALUES ('A1230023','Amberley Street',NULL,NULL,'Newcastle','SR2 0EZ',
33.00,4.50,2.00,4.00,43.50);
INSERT INTO PROPERTY
VALUES ('A1230024','Amberley Street',NULL,NULL,'Newcastle','SR2 1EZ',
33.00,4.50,2.00,4.00,43.50);
INSERT INTO PROPERTY
VALUES ('B3200014','Beaumont Crescent',NULL,'Hendon','Sunderland','SR2 2GD',
23.50,2.60,NULL,NULL,26.10);
INSERT INTO PROPERTY
VALUES ('E1400005','Elm Bank Road','Ford','Pennywell','Sunderland','SR7 6FE',
24.00,3.40,2.00,1.20,30.60);
INSERT INTO PROPERTY
VALUES ('E1400060','Elm Bank Road','Ford','Pennywell' ,'Sunderland','SR7 6FE',
24.32,2.20,NULL,1.20,27.72);
INSERT INTO PROPERTY
VALUES ('L2600041','Lyndon Grove',NULL,'Grindon','Sunderland','SR3 6GR',
32.50,2.72,.90,.11,36.23);
INSERT INTO PROPERTY
VALUES ('N4210154','Norman Road','Ford','Sulgrave','Sunderland','SR7 6FD',
23.50,1.22,NULL,NULL,32.62);
INSERT INTO PROPERTY
VALUES ('N4210175','Norman Road','Ford','Sulgrave','Sunderland','SR7 6FD',
23.50,1.22,NULL,1.00,33.62);
INSERT INTO PROPERTY
VALUES ('N4210176','Norman Road','Ford','Sulgrave','Sunderland','SR7 6FD',
23.50,1.22,1.15,1.00,34.77);
INSERT INTO PROPERTY
VALUES ('Q2300025','Queens Road',NULL,'Benton','Newcastle','SR2 6HE',
26.32,1.89,.80,1.16,30.17);
INSERT INTO PROPERTY
VALUES ('R3400048','Regent Terrace',NULL,'Grindon','Sunderland','SR3 7GR',
39.50,6.10,3.00,NULL,48.60);
INSERT INTO PROPERTY
VALUES ('R3400049','Regent Terrace',NULL,'Grindon','Sunderland','SR3 7GR',
39.50,16.10,3.00,NULL,48.60);
INSERT INTO PROPERTY
VALUES ('R3600001','Rowan Drive','Plains Farm','Grangetown','Sunderland','SR5 3GT',
15.00,2.00,NULL,NULL,17.00);
INSERT INTO PROPERTY
VALUES ('S1610010','Shakespeare Street',NULL,NULL,'Sunderland','SR1 2ST',
33.50,1.77,4.00,3.00,42.27);
INSERT INTO TENANT  
VALUES ('A1010001','Smith','Neil','21-FEB-34','18-MAY-84',NULL,NULL); 

INSERT INTO TENANT
VALUES ('A1010005','Thompson','Margaret Hilda','04-OCT-28','11-MAY-79',
'21-NOV-90',NULL);
INSERT INTO TENANT 
VALUES ('A1230023','Kilminster','Ian','17-APR-32','19-NOV-86',NULL,12);

INSERT INTO TENANT  
VALUES ('A1230024','Royce','Keith','17-MAR-34','03-APR-82',NULL,NULL); 

INSERT INTO TENANT  
VALUES ('B3200014','Morgan','James','19-JUL-40','22-AUG-83','01-MAY-91',NULL);
INSERT INTO TENANT  
VALUES ('E1400005','Maxwell','Jane','13-NOV-68','28-NOV-89',NULL,412.65);

INSERT INTO TENANT  VALUES ('E1400060','Clifford','John','11-MAR-25',
'20-SEP-82',NULL,NULL);


INSERT INTO TENANT  VALUES ('L2600041','Cartledge','John','04-OCT-62',
'05-DEC-87',NULL,NULL);  

INSERT INTO TENANT  VALUES ('N4210154','Potts','Ian','09-JUL-35','22-AUG-83',
'01-MAY-91',NULL);
INSERT INTO TENANT  VALUES ('N4210175','Lumsden','Alan','10-SEP-60',
'02-AUG-90',NULL,75.00);

INSERT INTO TENANT  
VALUES ('N4210176','Wyvill','Arthur','17-APR-53','30-MAY-87',NULL,NULL);


INSERT INTO TENANT  
VALUES ('Q2300025','Calvert','Robert','21-JUN-46','30-MAY-87',
'30-MAY-92',NULL);
INSERT INTO TENANT  VALUES('R3400049','Best','Marilyn','11-JAN-36',
'13-JUN-79',NULL,NULL); 

INSERT INTO TENANT  VALUES ('R3600001','Green','Harold','06-JUN-39',
'01-SEP-88',NULL,42.27);
INSERT INTO TENANT  VALUES ('S1610010','Brock','David','16-SEP-42',
'02-MAR-77',NULL,NULL); 

INSERT INTO PAYMENT                                            
VALUES ('A1010001','21-JAN-93','15:19:05',32.62,'C');          
  
INSERT INTO PAYMENT                                            
VALUES ('A1010001','27-JUL-96','17:22:05',25.62,'C');          
        
INSERT INTO PAYMENT                                            
VALUES ('A1010001','30-AUG-96','12:12:10',52.22,'C');

INSERT INTO PAYMENT                                            
VALUES ('A1010001','01-SEP-96','10:15:05',12.62,'C');


INSERT INTO PAYMENT                                            
VALUES ('A1230023','21-JAN-93','15:27:37',43.5,'C');           
  

INSERT INTO PAYMENT                                            
VALUES ('E1400005','22-JAN-93','11:45:09',25,'C');             
  
        

INSERT INTO PAYMENT                                            
VALUES ('A1010001','06-FEB-93','11:48:14',100,'M');            
  
        

INSERT INTO PAYMENT                                            
VALUES ('A1010001','30-JAN-93','11:49:07',25,'C');             
  
        

INSERT INTO PAYMENT                                            
VALUES ('A1230023','30-JAN-93','11:56:33',10,'C');             
  
        
                                                               
  
        
INSERT INTO PAYMENT                                            
VALUES ('A1230024','22-JAN-93','12:18:50',43.5,'M');           
  
        

INSERT INTO PAYMENT                                            
VALUES ('B3200014','22-JAN-93','13:43:33',26.1,'C');           
  
        

INSERT INTO PAYMENT                                            
VALUES ('B3200014','29-JAN-93','13:44:54',26.1,'C');           
  
        

INSERT INTO PAYMENT                                            
VALUES ('E1400060','22-JAN-93','13:45:55',27.72,'M');          
  
        

INSERT INTO PAYMENT                                            
VALUES ('L2600041','22-JAN-93','13:47:29',36.23,'M');          
  
        

INSERT INTO PAYMENT                                            
VALUES ('N4210154','22-JAN-93','14:11:52',32.62,'M');          
  
        

INSERT INTO PAYMENT                                            
VALUES ('N4210175','22-JAN-93','14:12:48',33.62,'C');          
  
        

INSERT INTO PAYMENT                                            
VALUES ('N4210176','22-JAN-93','14:14:26',79.8,'C');           
  
        

INSERT INTO PAYMENT                                            
VALUES ('Q2300025','22-JAN-93','14:15:23',30.17,'M');          
  
        

INSERT INTO PAYMENT                                            
VALUES ('R3400049','22-JAN-93','14:15:56',48.6,'M');           
  
        

INSERT INTO PAYMENT
VALUES ('S1610010','22-JAN-93','14:17:25',42.27,'M'); 
  
        
INSERT INTO PAYMENT
VALUES('E1400060','21-JUN-96', '16:37:42',55.2, 'C');

INSERT INTO PAYMENT
VALUES('L2600041','21-JUN-96','16:38:08',25.8,'M');

INSERT INTO PAYMENT
VALUES('L2600041', '21-JUN-96', '16:38:32',45.7, 'C');

INSERT INTO PAYMENT
VALUES('R3400049', '21-JUN-96', '16:38:51',50, 'C');

INSERT INTO PAYMENT
VALUES('S1610010', '21-JUN-96', '16:39:07',35.9, 'M');

INSERT INTO PAYMENT
VALUES('B3200014', '21-JUN-96', '16:39:24', 43.7, 'C');

INSERT INTO PAYMENT
VALUES('E1400060', '21-JUN-96', '16:42:35', 43.2, 'D');

INSERT INTO PAYMENT
VALUES('E1400005', '21-JUN-96', '16:42:57', 21.9, 'D');

INSERT INTO PAYMENT
VALUES('A1230024', '21-JUN-96', '16:43:58', 24.86, 'C');

INSERT INTO PAYMENT
VALUES('A1240023', '21-JUN-96', '16:44:15', 105.2, 'D');

INSERT INTO PAYMENT
VALUES('N4210154', '21-JUN-96', '16:44:37', 58, 'C');

INSERT INTO PAYMENT
VALUES('Q2300025', '21-JUN-96', '16:45:02', 34.9, 'C');

INSERT INTO PAYMENT
VALUES('S1610010', '21-JUN-96', '16:45:20', 65.7, 'D');

INSERT INTO PAYMENT
VALUES('E1400060', '21-JUN-96', '16:45:38', 22, 'M');

INSERT INTO PAYMENT
VALUES('A1010001', '21-JUN-96', '16:45:52', 43.2, 'D');


COMMIT;

