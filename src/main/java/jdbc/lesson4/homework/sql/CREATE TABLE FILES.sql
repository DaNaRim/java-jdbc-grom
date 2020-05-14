CREATE TABLE FILES
(
    ID         NUMBER PRIMARY KEY,
    NAME       NVARCHAR2(10) UNIQUE NOT NULL,
    FORMAT     NVARCHAR2(20)        NOT NULL,
    FILE_SIZE  NUMBER CHECK (FILE_SIZE > 0),
    STORAGE_ID NUMBER,
    CONSTRAINT STORAGE_FK FOREIGN KEY (STORAGE_ID) REFERENCES STORAGE (ID)
);