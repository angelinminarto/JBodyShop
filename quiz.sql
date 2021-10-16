USE JBodyShop
--1
CREATE TABLE StaffPosition
(
StaffPositionID char(5) PRIMARY KEY CHECK (LEFT(StaffPositionID,2) LIKE 'PO [0-9] [0-9] [0-9]'),
StaffPositionName varchar(30) NOT NULL,
StaffPositionBonus numeric(11,2) NOT NULL CHECK(LEN(StaffPositionBonus)>=0),
)

--2
-- // execute ini dulu krn mau buat tabel tambahan
ALTER TABLE Customer
Add CustomerAddress varchar(100)
-- // baru execute ini krn mau masukkin datanya
ALTER Table Customer
Add CONSTRAINT CHK_CustomerAddress CHECK(CustomerAddress LIKE '%Street%')
SELECT * FROM Customer

-- 3
INSERT INTO Customer
VALUES ('CU011','Alicia Hemsworth','alicia.hemsworth@gmail.com','0812121233','Female','2000/11/01')
SELECT * FROM Customer

-- 4
SELECT StaffName, StaffGender, StaffSalary
FROM Staff
WHERE StaffGender LIKE '%Female%'
SELECT * FROM Staff

-- 5
UPDATE Staff 
SET Staff.StaffSalary = Staff.StaffSalary + 1000000 
FROM Staff 
INNER JOIN TransactionHeader 
ON Staff.StaffID = TransactionHeader.StaffID
WHERE TransactionHeader.TransactionDate like '%2020%' 
SELECT * FROM Staff

