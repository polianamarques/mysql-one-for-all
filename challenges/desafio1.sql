
DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
CREATE TABLE SpotifyClone.plan(
    id_plan INT NOT NULL  PRIMARY KEY AUTO_INCREMENT,
    type_of_plan VARCHAR(60) NOT NULL,
    plan_value DECIMAL(3,2)
) engine = InnoDB;
CREATE TABLE SpotifyClone.artist(
    id_artist INT NOT NULL  PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(60) NOT NULL
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
    id_artist INT NOT NULL,
    FOREIGN KEY (id_artist) REFERENCES artist (id_artist)
) engine = InnoDB;
CREATE TABLE SpotifyClone.musics(
    music_id INT NOT NULL  PRIMARY KEY AUTO_INCREMENT,
    songs VARCHAR(60) NOT NULL UNIQUE, 
    seconds INT, 
    album_id INT NOT NULL, 
    FOREIGN KEY (album_id) REFERENCES album (album_id)
) engine = InnoDB;
CREATE TABLE SpotifyClone.history_reproductions(
    reproductions_date DATETIME, 
    user_id INT NOT NULL, 
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    music_id INT NOT NULL, 
    FOREIGN KEY (music_id) REFERENCES musics (music_id),
    PRIMARY KEY (user_id, music_id)
) engine = InnoDB;
CREATE TABLE SpotifyClone.following(
    id_artist INT, 
    FOREIGN KEY (id_artist) REFERENCES artist (id_artist),
    user_id INT NOT NULL, 
    FOREIGN KEY (user_id) REFERENCES user (user_id),
    PRIMARY KEY (id_artist, user_id)
) engine = InnoDB;
INSERT INTO SpotifyClone.plan (type_of_plan, plan_value)
VALUES
  ('gratuito',0),
  ('familiar',7.99),
  ('universitário', 5.99),
  ('pessoal', 6.99);
INSERT INTO SpotifyClone.artist (artist_name)
VALUES
  ('Beyoncé'),
  ('Queen'),
  ('Elis Regina'),
  ('Baco Exu do Blues'),
  ('Blind Guardian'),
  ('Nina Simone');
  INSERT INTO SpotifyClone.user (user_name, age, signature_date,id_plan)
VALUES
   ('Barbara Liskov',82,'2019-10-20',1),
   ('Robert Cecil Martin',58,'2017-01-06',1),
   ('Ada Lovelace',37,'2017-12-30',2),
   ('Martin Fowler',46,'2017-01-17',2),
   ('Sandi Metz',58,'2018-04-29',2),
   ('Paulo Freire',19,'2018-02-14',3),
   ('Bell Hooks',26,'2018-01-05',3),
   ('Christopher Alexander',85,'2019-06-05',4),
   ('Judith Butler',45,'2020-05-13',4),
   ('Jorge Amado',58,'2017-02-17',4);
  INSERT INTO SpotifyClone.album (name_album, released_year,id_artist)
VALUES
   ('Renaissance',2022,1),
   ('Jazz',1978,2),
   ('Hot Space',1982,2),
   ('Falso Brilhante',1998,3),
   ('Vento de Maio',2001,3),
   ('QVVJFA?',2003,4),
   ('Somewhere Far Beyond',2007,5),
   ('I Put A Spell On You','2012',6);
    INSERT INTO SpotifyClone.musics (songs, seconds, album_id)
VALUES
   ('BREAK MY SOUL',279,1),
   ("VIRGO'S GROOVE",369,1),
   ('ALIEN SUPERSTAR',116,1),
   ("Don't Stop Me Now",203,2),
   ('Under Pressure' ,152,3),
   ('Como Nossos Pais',105,4),
   ('O Medo de Amar é o Medo de Ser Livre',207,5),
   ('Samba em Paris',267,6),
   ("The Bard's Song", 244,7),
   ('Feeling Good',100,8);
       INSERT INTO SpotifyClone.history_reproductions (reproductions_date, user_id, music_id)
VALUES
   ('2022-02-28 10:45:55',1,8),
   ('2020-05-02 05:30:35',1,2),
   ('2020-03-06 11:22:33',1,10),
   ('2022-08-05 08:05:17',2,10),
   ('2020-01-02 07:40:33',2,6),
   ('2020-11-13 16:55:13',3,10),
   ('2020-12-05 18:38:30',3,2),
   ('2021-08-15 17:10:10',4,8),
   ('2022-01-09 01:44:33',5,8),
   ('2020-08-06 15:23:43',5,5),
   ('2017-01-24 00:31:17',6,7),
   ('2017-10-12 12:35:20',6,1),
   ('2011-12-15 22:30:49',7,4),
   ('2012-03-17 14:56:41',8,4),
   ('2022-02-24 21:14:22',9,9), 
   ('2015-12-13 08:30:22',10,3);
          INSERT INTO SpotifyClone.following ( id_artist, user_id)
VALUES
   (1,1),
   (2,1),
   (3,1),
   (1,2),
   (3,2),
   (2,3),
   (4,4),
   (5,5),
   (6,5),
   (6,6),
   (1,6),
   (6,7),
   (3,9),
   (2,10);