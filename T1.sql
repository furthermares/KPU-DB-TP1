#DROP TABLE IF EXISTS customer;
#REPAIR TABLE customer;
SET FOREIGN_KEY_CHECKS=0;

CREATE TABLE Customer (
 cssn VARCHAR(20) PRIMARY KEY,
 cname VARCHAR(20),
 address VARCHAR(50),
 birthday DATE,
 email VARCHAR(50),
 phonenumber VARCHAR(20),
 job VARCHAR(20)
);

CREATE TABLE Account (
 aid VARCHAR(20) PRIMARY KEY,
 atype VARCHAR(20),
 balance INT,
 appliedchk VARCHAR(20),
 accountdate date,
 cname VARCHAR(20),
 phonenumber VARCHAR(20),
 email VARCHAR(50),
 cssn VARCHAR(20),
 FOREIGN KEY (cssn) REFERENCES Customer(cssn)
);

CREATE TABLE Card (
 cid VARCHAR(20) PRIMARY KEY,
 regdate DATE,
 limitamount INT,
 transdate DATE,
 ctype VARCHAR(20),
 ssn VARCHAR(20),
 aid VARCHAR(20),
 cssn VARCHAR(20),
 FOREIGN KEY (cssn) REFERENCES Customer(cssn),
 FOREIGN KEY (aid) REFERENCES Account(aid) 
);

CREATE TABLE Transaction (
 aid VARCHAR(10),
 tdate DATE,
 num INTEGER,
 asep VARCHAR(20),
 acontents VARCHAR(50),
 amount INT,
 balance INT,
 PRIMARY KEY(aid,tdate,num),
 FOREIGN KEY (aid) REFERENCES Account(aid)
);

INSERT INTO Customer VALUES ('000000-0000001', 'cssn1', 'address1', '01-01-01', '1@mail.com','000-0000-0001', 'job1');
INSERT INTO Account VALUES ('aid1', 'atype1', '121', 'appliedchk1', '01-02-01','cname1', '000-0000-0001','1@mail.com','cssn1');
INSERT INTO Card VALUES ('cid1', '01-03-01', '131', '01-03-02', 'ctype1','ssn1', 'aid1','cssn1');
INSERT INTO Transaction VALUES ('aid1', '01-04-01', '141', 'asep1', 'acontents1','142', '143');

INSERT INTO Customer VALUES ('000000-0000002', 'cssn2', 'address2', '02-01-01', '2@mail.com','000-0000-0002', 'job2');
INSERT INTO Account VALUES ('aid2', 'atype2', '221', 'appliedchk2', '02-02-01','cname2', '000-0000-0002','2@mail.com','cssn2');
INSERT INTO Card VALUES ('cid2', '02-03-01', '231', '02-03-02', 'ctype2','ssn2', 'aid2','cssn2');
INSERT INTO Transaction VALUES ('aid2', '02-04-01', '241', 'asep2', 'acontents2','242', '243');

INSERT INTO Customer VALUES ('000000-0000003', 'cssn3', 'address3', '03-01-01', '3@mail.com','000-0000-0003', 'job3');
INSERT INTO Account VALUES ('aid3', 'atype3', '321', 'appliedchk3', '03-02-01','cname3', '000-0000-0003','3@mail.com','cssn3');
INSERT INTO Card VALUES ('cid3', '03-03-01', '331', '03-03-02', 'ctype3','ssn3', 'aid3','cssn3');
INSERT INTO Transaction VALUES ('aid3', '03-04-01', '341', 'asep3', 'acontents3','342', '343');

INSERT INTO Customer VALUES ('000000-0000004', 'cssn4', 'address4', '04-01-01', '4@mail.com','000-0000-0004', 'job4');
INSERT INTO Account VALUES ('aid4', 'atype4', '421', 'appliedchk4', '04-02-01','cname4', '000-0000-0004','4@mail.com','cssn4');
INSERT INTO Card VALUES ('cid4', '04-03-01', '431', '04-03-02', 'ctype4','ssn4', 'aid4','cssn4');
INSERT INTO Transaction VALUES ('aid4', '04-04-01', '441', 'asep4', 'acontents4','442', '443');

INSERT INTO Customer VALUES ('000000-0000005', 'cssn5', 'address5', '05-01-01', '5@mail.com','000-0000-0005', 'job5');
INSERT INTO Account VALUES ('aid5', 'atype5', '521', 'appliedchk5', '05-02-01','cname5', '000-0000-0005','5@mail.com','cssn5');
INSERT INTO Card VALUES ('cid5', '05-03-01', '531', '05-03-02', 'ctype5','ssn5', 'aid5','cssn5');
INSERT INTO Transaction VALUES ('aid5', '05-04-01', '541', 'asep5', 'acontents5','542', '543');

#SELECT * from customer;
#SELECT * from account;
#SELECT * from card;
#SELECT * from transaction;