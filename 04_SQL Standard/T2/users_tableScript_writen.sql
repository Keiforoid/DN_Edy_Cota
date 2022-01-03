CREATE TABLE users (
  iduser INT NOT NULL,
  username VARCHAR(100),
  email VARCHAR(500) NOT NULL,
  idcompany INT NOT NULL,
  PRIMARY KEY (iduser)
    );
    
ALTER TABLE users
	ADD CONSTRAINT company_users
	FOREIGN KEY (idcompany)
	REFERENCES company (idcompany);
    
ALTER TABLE users
	INDEX company_users_idx (idcompany ASC) VISIBLE;
 