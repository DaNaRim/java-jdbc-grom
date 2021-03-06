CREATE TABLE USERS
(
    ID        NUMBER PRIMARY KEY,
    USERNAME  NVARCHAR2(20)                NOT NULL UNIQUE,
    PASSWORD  NVARCHAR2(50)                NOT NULL,
    COUNTRY   NVARCHAR2(50)                NOT NULL,
    USER_TYPE NVARCHAR2(20) DEFAULT 'USER' NOT NULL,
    CHECK (USER_TYPE IN ('USER', 'ADMIN'))
);
