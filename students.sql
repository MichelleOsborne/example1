PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE Modules(code VARCHAR(10), name VARCHAR(100));
INSERT INTO Modules VALUES('CMP020C101','Software Development 1');
INSERT INTO Modules VALUES('CMP020C102','Computer Systems');
INSERT INTO Modules VALUES('CMP020C103','Mathematics for Computer Science');
INSERT INTO Modules VALUES('CMP020C104','Software Development 2');
INSERT INTO Modules VALUES('CMP020C105','Computing and Society');
INSERT INTO Modules VALUES('CMP020C106','Databases');
INSERT INTO Modules VALUES('CMP020N201','Software Development 3');
INSERT INTO Modules VALUES('CMP020N202','Operating Systems');
INSERT INTO Modules VALUES('CMP020N203','Algorithms');
INSERT INTO Modules VALUES('CMP020N204','Software Engineering');
INSERT INTO Modules VALUES('CMP020N205','Data Science');
INSERT INTO Modules VALUES('CMP020N206','Artificial Intelligence');
INSERT INTO Modules VALUES('CMP040X301','Final-Year Project');
INSERT INTO Modules VALUES('CMP020X302','Data Visualisation');
INSERT INTO Modules VALUES('CMP020X303','Machine Learning');
INSERT INTO Modules VALUES('CMP020X304','Data Engineering');
INSERT INTO Modules VALUES('CMP020X305','Cybersecurity');
INSERT INTO Modules VALUES('CMP020L001','Software Development 1');
INSERT INTO Modules VALUES('CMP020L002','Computer Systems');
INSERT INTO Modules VALUES('CMP020L003','Databases');
INSERT INTO Modules VALUES('CMP020L004','Software Development 2');
INSERT INTO Modules VALUES('CMP020L005','Computing and Society');
INSERT INTO Modules VALUES('CMP020L006','Cybersecurity');
INSERT INTO Modules VALUES('CMP060L050','MSc Project');
CREATE TABLE Programmes(code VARCHAR(8) PRIMARY KEY, name VARCHAR(50));
INSERT INTO Programmes VALUES('09UU5931','BSc Computer Science');
INSERT INTO Programmes VALUES('48PN0081','MSc Computing');
CREATE TABLE Programme_Modules(programme VARCHAR(8) NOT NULL, module VARCHAR(10) NOT NULL, FOREIGN KEY (programme) REFERENCES Programmes(code), FOREIGN KEY (module) REFERENCES Modules(code));
INSERT INTO Programme_Modules VALUES('09UU5931','CMP020C101');
INSERT INTO Programme_Modules VALUES('09UU5931','CMP020C102');
INSERT INTO Programme_Modules VALUES('09UU5931','CMP020C103');
INSERT INTO Programme_Modules VALUES('09UU5931','CMP020C104');
INSERT INTO Programme_Modules VALUES('09UU5931','CMP020C105');
INSERT INTO Programme_Modules VALUES('09UU5931','CMP020C106');
INSERT INTO Programme_Modules VALUES('09UU5931','CMP020N201');
INSERT INTO Programme_Modules VALUES('09UU5931','CMP020N202');
INSERT INTO Programme_Modules VALUES('09UU5931','CMP020N203');
INSERT INTO Programme_Modules VALUES('09UU5931','CMP020N204');
INSERT INTO Programme_Modules VALUES('09UU5931','CMP020N205');
INSERT INTO Programme_Modules VALUES('09UU5931','CMP020N206');
INSERT INTO Programme_Modules VALUES('09UU5931','CMP040X301');
INSERT INTO Programme_Modules VALUES('09UU5931','CMP020X302');
INSERT INTO Programme_Modules VALUES('09UU5931','CMP020X303');
INSERT INTO Programme_Modules VALUES('09UU5931','CMP020X304');
INSERT INTO Programme_Modules VALUES('09UU5931','CMP020X305');
INSERT INTO Programme_Modules VALUES('48PN0081','CMP020L001');
INSERT INTO Programme_Modules VALUES('48PN0081','CMP020L002');
INSERT INTO Programme_Modules VALUES('48PN0081','CMP020L003');
INSERT INTO Programme_Modules VALUES('48PN0081','CMP020L004');
INSERT INTO Programme_Modules VALUES('48PN0081','CMP020L005');
INSERT INTO Programme_Modules VALUES('48PN0081','CMP020L006');
INSERT INTO Programme_Modules VALUES('48PN0081','CMP060L050');
CREATE TABLE Students(id INT, first_name VARCHAR(20), last_name VARCHAR(20), programme VARCHAR(8) NOT NULL, FOREIGN KEY (programme) REFERENCES Programmes(code));
INSERT INTO Students VALUES(1,'Kevin','Chalmers','09UU5931');
INSERT INTO Students VALUES(2,'Lisa','Haskel','48PN0081');
INSERT INTO Students VALUES(3,'Arturo','Araujo','09UU5931');
INSERT INTO Students VALUES(4,'Kimia','Aksir','48PN0081');
INSERT INTO Students VALUES(5,'Pelumi','Apantaku','48PN0081');
INSERT INTO Students VALUES(6,'Mohammed','Ahmad','09UU5931');
INSERT INTO Students VALUES(7,'Amer','Salman','09UU5931');
INSERT INTO Students VALUES(8,'Amitave','Banik','09UU5931');
CREATE TABLE Grades(student INT NOT NULL, module VARCHAR(10) NOT NULL, grade INT, FOREIGN KEY (student) REFERENCES Students(id), FOREIGN KEY (module) REFERENCES Modules(code));
INSERT INTO Grades VALUES(1,'CMP020C101',82);
INSERT INTO Grades VALUES(1,'CMP020C102',65);
INSERT INTO Grades VALUES(1,'CMP020C103',100);
INSERT INTO Grades VALUES(1,'CMP020C104',85);
INSERT INTO Grades VALUES(1,'CMP020C105',62);
INSERT INTO Grades VALUES(1,'CMP020C106',72);
INSERT INTO Grades VALUES(2,'CMP020L001',NULL);
INSERT INTO Grades VALUES(2,'CMP020L002',NULL);
INSERT INTO Grades VALUES(2,'CMP020L003',NULL);
INSERT INTO Grades VALUES(3,'CMP020C101',100);
INSERT INTO Grades VALUES(3,'CMP020C102',62);
INSERT INTO Grades VALUES(3,'CMP020C103',82);
INSERT INTO Grades VALUES(4,'CMP020L001',85);
INSERT INTO Grades VALUES(4,'CMP020L002',75);
INSERT INTO Grades VALUES(4,'CMP020L003',100);
INSERT INTO Grades VALUES(5,'CMP020L001',NULL);
INSERT INTO Grades VALUES(5,'CMP020L002',NULL);
INSERT INTO Grades VALUES(5,'CMP020L003',NULL);
INSERT INTO Grades VALUES(6,'CMP020C101',100);
INSERT INTO Grades VALUES(7,'CMP020C101',65);
INSERT INTO Grades VALUES(8,'CMP020C101',NULL);
COMMIT;
