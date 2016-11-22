DROP TABLE IF EXISTS USERS;

CREATE TABLE USERS (
	 userId varchar(12) not null
	,password varchar(12) not null
	,name varchar(20) not null
	,email varchar(50)
	,primary key (userId)	
);

INSERT INTO USERS VALUES('javajigi', 'password', '자바지기', 'javajigi@slipp.net');