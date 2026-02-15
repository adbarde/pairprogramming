CREATE TABLE student (
  rollno char(4) NOT NULL,
  nm varchar(50) NOT NULL,
  age int NOT NULL
);

ALTER TABLE student
  ADD PRIMARY KEY (rollno);


CREATE TABLE association (
  ano char(2) NOT NULL,
  anm varchar(50) NOT NULL
);


ALTER TABLE association
  ADD PRIMARY KEY (ano);

CREATE TABLE joins (
  rollno char(4) NOT NULL,
  ano char(2) NOT NULL
);


ALTER TABLE joins
  ADD PRIMARY KEY (rollno,ano);


ALTER TABLE joins
  ADD CONSTRAINT FK_ano FOREIGN KEY (ano) REFERENCES association (ano) ON DELETE CASCADE,
  ADD CONSTRAINT FK_rollno FOREIGN KEY (rollno) REFERENCES student (rollno) ON DELETE CASCADE;


INSERT INTO association (ano, anm) VALUES
('a1', 'Music'),
('a2', 'XIT'),
('a3', 'Nature');


INSERT INTO student (rollno, nm, age) VALUES
('2001', 'One', 14),
('2002', 'Two', 15),
('2003', 'Three', 14);

INSERT INTO joins (rollno, ano) VALUES
('2001', 'a1'),
('2001', 'a2'),
('2001', 'a3'),
('2002', 'a1'),
('2002', 'a2'),
('2003', 'a1'),
('2003', 'a2'),
('2003', 'a3');

COMMIT;

