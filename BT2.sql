CREATE TABLE CUSTOMERS (
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(100) NOT NULL,
    Email VARCHAR(100) NOT NULL UNIQUE,
    Age INT NOT NULL,
    CONSTRAINT chk_age CHECK (Age >= 0)
);
--FullName thêm NOT NULL để đảm bảo luôn có tên khách hàng.
--Email thêm NOT NULL và UNIQUE để tránh dữ liệu rác và trùng lặp.
--Age thêm NOT NULL và ràng buộc CHECK (Age >= 0) để ngăn nhập tuổi âm.

--Ràng buộc Email: không được NULL và phải duy nhất
ALTER TABLE CUSTOMERS
MODIFY Email VARCHAR(100) NOT NULL UNIQUE;

--Ràng buộc Age: tuổi phải >= 0
ALTER TABLE CUSTOMERS
ADD CONSTRAINT chk_age CHECK (Age >= 0);

--Ràng buộc FullName: không được NULL
ALTER TABLE CUSTOMERS
MODIFY FullName VARCHAR(100) NOT NULL;

