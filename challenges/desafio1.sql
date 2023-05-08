-- Descomente e altere as linhas abaixo:

DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
CREATE TABLE SpotifyClone.plan(
    id_plan INT NOT NULL  PRIMARY KEY AUTO_INCREMENT,
    type_of_plan VARCHAR(60) NOT NULL,
    plan_value DECIMAL(3,2),
) engine = InnoDB;
CREATE TABLE SpotifyClone.artist(
    id_artist INT NOT NULL  PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(60) NOT NULL,
) engine = InnoDB;
CREATE TABLE SpotifyClone.user(
    user_id INT NOT NULL  PRIMARY KEY AUTO_INCREMENT,
    user_name VARCHAR(60) NOT NULL,
    age INT NOT NULL, 
    signature_date DATE NOT NULL, 
    id_plan INT NOT NULL, 
    FOREIGN KEY (id_plan) REFERENCES plan (id_plan)
) engine = InnoDB;
CREATE TABLE SpotifyClone.album(
    album_id INT NOT NULL  PRIMARY KEY AUTO_INCREMENT,
    name_album VARCHAR(60) NOT NULL, 
    released_year YEAR NOT NULL, 
    artist_name VARCHAR(60) NOT NULL, 
    FOREIGN KEY (artist_name) REFERENCES artist (artist_name)
) engine = InnoDB;
CREATE TABLE SpotifyClone.musics(
    music_id INT NOT NULL  PRIMARY KEY AUTO_INCREMENT,
    songs VARCHAR(60) NOT NULL UNIQUE, 
    seconds INT, 
    reproductions_date DATETIME, 
    album_id VARCHAR(60) NOT NULL, 
    FOREIGN KEY (album_id) REFERENCES album (album_id)
) engine = InnoDB;
CREATE TABLE SpotifyClone.history_reproductions(
    user_id INT NOT NULL, 
    FOREIGN KEY (user_id) REFERENCES user (user_id)
    music_id INT NOT NULL, 
    FOREIGN KEY (music_id) REFERENCES user (music_id)
) engine = InnoDB;
CREATE TABLE SpotifyClone.following(
    artist_id INT NOT NULL, 
    FOREIGN KEY (artist_id) REFERENCES user (artist_id)
    user_id INT NOT NULL, 
    FOREIGN KEY (user_id) REFERENCES user (user_id)
) engine = InnoDB;
INSERT INTO SpotifyClone.plan (type_of_plan, plan_value)
VALUES
  ('gratuito','0'),
  ('familiar','7,99'),
  ('universitário', '5,99'),
  ('pessoal', '6,99');
INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados X'),
  ('exemplo de dados 2', 'exemplo de dados Y');
