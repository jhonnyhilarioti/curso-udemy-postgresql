/**
 * Criando PRIMARY KEYs 
 */

CREATE TABLE exemplo(
	id integer PRIMARY KEY,
	nome varchar(100)
);

CREATE TABLE IF NOT EXISTS exemplo2(
	id integer,
	nome varchar(100),
	CONSTRAINT pk_id PRIMARY KEY (id)
);

CREATE TABLE exemplo3(
	id integer,
	nome varchar(100)
);

ALTER TABLE exemplo3 ADD PRIMARY KEY (id);

ALTER TABLE exemplo3 ADD CONSTRAINT pk_id PRIMARY KEY (id);

ALTER TABLE exemplo3 DROP PRIMARY KEY;

DROP TABLE exemplo3;

SELECT * FROM exemplo2;

/**********************************************************/

/**
 * Criando FOREIGN KEYs
 */

CREATE TABLE IF NOT EXISTS exemplo22(
	id integer UNIQUE NOT NULL PRIMARY KEY,
	id_exemplo2 integer,
	nome varchar(100),
	FOREIGN KEY (id_exemplo2) REFERENCES exemplo2(id)
);

SELECT * FROM exemplo22;

DROP TABLE exemplo22;

CREATE TABLE IF NOT EXISTS exemplo22(
	id integer UNIQUE NOT NULL PRIMARY KEY,
	id_exemplo2 integer,
	nome varchar(100),
	CONSTRAINT fk_exemplo2 FOREIGN KEY (id_exemplo2)
		REFERENCES exemplo2(id)
);

CREATE TABLE IF NOT EXISTS exemplo22(
	id SERIAL UNIQUE NOT NULL PRIMARY KEY,
	nome varchar(100) NOT NULL,
	id_exemplo2 integer UNIQUE NOT NULL REFERENCES exemplo2(id)
);

CREATE TABLE IF NOT EXISTS exemplo22(
	id SERIAL UNIQUE NOT NULL PRIMARY KEY,
	nome varchar(100) NOT NULL,
	id_exemplo2 integer
);

ALTER TABLE exemplo22 ADD FOREIGN KEY (id_exemplo2) 
	REFERENCES exemplo2(id);































