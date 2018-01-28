--
-- This is the Database Schema for the DVD Library Application.
--

-- Clear out the old table.
DROP TABLE ObjectIDs;
DROP TABLE Item;

--
-- This table represents the "next" object_ID for a given table.
--
CREATE TABLE ObjectIDs (
-- PRIMARY KEY --
   table_name  VARCHAR(30) PRIMARY KEY,
-- DATA FIELDS --
   id          INTEGER NOT NULL
);

--
-- This table represents the DVD Items
--
CREATE TABLE Item (
-- PRIMARY KEY --
   id          INTEGER PRIMARY KEY,  
-- DATA FIELDS --
   username    VARCHAR(20) NOT NULL, 
   title       VARCHAR(100) NOT NULL, 
   year        CHAR(4) NOT NULL,     
   genre       VARCHAR(20) NOT NULL  
);

COMMIT;
