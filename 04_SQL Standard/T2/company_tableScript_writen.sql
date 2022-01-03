

CREATE TABLE company (
  idcompany int not null,
  companyname varchar(100) not null,
  createdon datetime,
  PRIMARY KEY (idcompany)
  );
  
alter Table company
add column(
	location char(2)
);

alter Table company
drop column createdon;