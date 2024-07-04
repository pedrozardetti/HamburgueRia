CREATE TABLE IF NOT EXISTS CUSTOMER (
    ID UUID DEFAULT RANDOM_UUID() PRIMARY KEY,
    NAME VARCHAR (100) NOT NULL,
    EMAIL VARCHAR (100) NOT NULL,
    PASSWORD VARCHAR (100) NOT NULL,
    TYPE VARCHAR(10) NOT NULL CHECK (TYPE IN ('ADMIN', 'CLIENTE'))

);


MERGE INTO CUSTOMER (ID, NAME, EMAIL, PASSWORD, TYPE)
    KEY (EMAIL)
    VALUES (RANDOM_UUID(), 'admin', 'admin@gmail.com', 'admin', 'ADMIN');





