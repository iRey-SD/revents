DROP DATABASE IF EXISTS med_db;
CREATE DATABASE med_db;
\c med_db


 CREATE TABLE roles (
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL
 );


--- Admin ---

CREATE TABLE admin (
  id SERIAL PRIMARY KEY,
  firstName VARCHAR NOT NULL,
  lastName VARCHAR NOT NULL,
  email varchar  UNIQUE NOT NULL,
  password varchar NOT NULL,
  confirmPassword varchar NOT NULL,
  phone int NOT NULL,
  roles_id  int NOT NULL,
   foreign key(roles_id) references roles ON DELETE CASCADE ON UPDATE CASCADE
);


--- Participants ---

CREATE TABLE participant (
  id SERIAL PRIMARY KEY,
  firstName VARCHAR NOT NULL,
  lastName VARCHAR NOT NULL,
  email varchar  UNIQUE NOT NULL,
  password varchar NOT NULL,
  confirmPassword varchar NOT NULL,
  phone int NOT NULL,
  company VARCHAR NOT NULL,
  jobTitle  VARCHAR NOT NULL,
  Gender VARCHAR NOT NULL,
  City VARCHAR NOT NULL,
  Age int NOT NULL
  );

CREATE TABLE disease (
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL
);

CREATE TABLE diseaseParticipent (
  id SERIAL PRIMARY KEY,
  disease_id int NOT NULL,
  participant_id int NOT NULL,
  foreign key(participant_id) references participant ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE diseaseType (
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  disease_id int NOT NULL,
  foreign key(disease_id) references disease ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE diseaseTypePart (
  id SERIAL PRIMARY KEY,
  diseaseType_id int NOT NULL,
  foreign key(diseaseType_id) references diseaseType ON DELETE CASCADE ON UPDATE CASCADE
);




--- Research ---

CREATE TABLE researcher (
  id SERIAL PRIMARY KEY,
  firstName VARCHAR NOT NULL,
  lastName VARCHAR NOT NULL,
  email varchar  UNIQUE NOT NULL,
  password varchar NOT NULL,
  confirmPassword varchar NOT NULL,
  phone int NOT NULL,
  company VARCHAR NOT NULL,
  jobTitle  VARCHAR NOT NULL
);


CREATE TABLE researchType (
  id SERIAL PRIMARY KEY,
  type VARCHAR NOT NULL,
  title VARCHAR NOT NULL,
  description VARCHAR NOT NULL,
  url VARCHAR NOT NULL,
  datatime DATE NOT NULL,
  number  VARCHAR NOT NULL,
  approved  VARCHAR,
  points int,
  researcher_id int NOT NULL,
  disease_id int NOT NULL,
  foreign key(disease_id) references disease ON DELETE CASCADE ON UPDATE CASCADE,
  foreign key(researcher_id) references researcher ON DELETE CASCADE ON UPDATE CASCADE
);




--- Generals ---

CREATE TABLE contactUs (
  id SERIAL PRIMARY KEY,
  name VARCHAR NOT NULL,
  email varchar  NOT NULL,
  subject varchar NOT NULL,
  message varchar NOT NULL
);

CREATE TABLE posts (
  id SERIAL PRIMARY KEY,
  title VARCHAR NOT NULL,
  Datatime VARCHAR NOT NULL,
  content varchar UNIQUE NOT NULL,
  
  phone int NOT NULL,
  company VARCHAR NOT NULL,
  jobTitle  VARCHAR NOT NULL,
  Gender VARCHAR NOT NULL,
  City VARCHAR NOT NULL,
  Age int NOT NULL,
  categories VARCHAR NOT NULL,
  admin_id int NOT NULL
);

