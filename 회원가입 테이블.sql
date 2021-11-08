CREATE table Membership(
    name        VARCHAR2(50)    not null,          
    birthday    date            not null,           
    calendar    VARCHAR2(50)    not null,          
    id          VARCHAR2(50)    PRIMARY KEY,
    pwd         VARCHAR2(50)    NOT null,
    email       VARCHAR2(100)   not null    UNIQUE,
    notice      varchar2(50)    not null,
    hometel     varchar2(50)    not null,
    phone       VARCHAR2(50)    not null,
    message     VARCHAR2(50)    not null,
    address     VARCHAR2(100)   not null,
    job         VARCHAR2(50)    not null,
    root        VARCHAR2(50)    not null
);

select *
from membership;
