-- Data template SQL script.
-- This file is used by Ant to create a user-specific data.sql file
-- that is then imported into the database

INSERT INTO Item ( id, username, title, year, genre )
  VALUES(1,'@username@','The Godfather','1972','Drama');

INSERT INTO Item ( id, username, title, year, genre )
  VALUES(2,'@username@','The Shawshank Redemption','1994','Drama');

INSERT INTO Item ( id, username, title, year, genre )
  VALUES(3,'@username@','The Godfather: Part II','1974','Drama');

INSERT INTO Item ( id, username, title, year, genre )
  VALUES(4,'@username@','The Lord of the Rings: The Return of the King','2003','Fantasy');

INSERT INTO Item ( id, username, title, year, genre )
  VALUES(5,'@username@','The Lord of the Rings: The Two Towers','2002','Fantasy');

INSERT INTO Item ( id, username, title, year, genre )
  VALUES(6,'@username@','Shindler''s List','1998','Drama');

INSERT INTO Item ( id, username, title, year, genre )
  VALUES(7,'@username@','Shichinin no samurai','1954','Action');

INSERT INTO Item ( id, username, title, year, genre )
  VALUES(8,'@username@','Casablanca','1942','Drama');

INSERT INTO Item ( id, username, title, year, genre )
  VALUES(9,'@username@','The Lord of the Rings: The Fellowship of the Ring','2001','Fantasy');

INSERT INTO Item ( id, username, title, year, genre )
  VALUES(10,'@username@','Star Wars','1977','Sci-Fi');

INSERT INTO Item ( id, username, title, year, genre )
  VALUES(11,'@username@','Citizen Kane','1941','Mystery');

INSERT INTO Item ( id, username, title, year, genre )
  VALUES(12,'@username@','One Flew Over the Cuckoo''s Nest','1975','Drama');

INSERT INTO Item ( id, username, title, year, genre )
  VALUES(13,'@username@','Dr. Strangelove or: How I Learned to Stop Worrying and Love the Bomb','1964','Comedy');

INSERT INTO Item ( id, username, title, year, genre )
  VALUES(14,'@username@','Rear Window','1954','Thriller');

INSERT INTO Item ( id, username, title, year, genre )
  VALUES(15,'@username@','Star Wars: Episode V - The Empire Strikes Back','1980','Sci-Fi');

INSERT INTO Item ( id, username, title, year, genre )
  VALUES(16,'@username@','Raiders of the Lost Ark','1981','Action');

INSERT INTO Item ( id, username, title, year, genre )
  VALUES(17,'@username@','The Usual Suspects','1995','Mystery');

INSERT INTO Item ( id, username, title, year, genre )
  VALUES(18,'@username@','Pulp Fiction','1994','Crime');

INSERT INTO Item ( id, username, title, year, genre )
  VALUES(19,'@username@','Memento','2000','Mystery');

INSERT INTO ObjectIds (table_name, id)
  VALUES('Item', 20);
