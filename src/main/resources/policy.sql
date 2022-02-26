create database policy;
use policy;

create table register(
name varchar(20),
mobileno varchar(20),
password varchar(20),
emailid varchar(30),
passhint varchar(30),
primary key(mobileno)
);

create table policydata(
policyid varchar(20),
policyname varchar(20),
policytype varchar(20),
amount varchar(20),
years varchar(20),
maturity varchar(20),
nomination varchar(20),
bankname varchar(20),
accountno varchar(20),
userid varchar(20),
username varchar(20),
primary key(policyid)
);

