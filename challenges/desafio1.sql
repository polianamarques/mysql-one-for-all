-- Descomente e altere as linhas abaixo:

DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
CREATE TABLE SpotifyClone.plan(
    id_plan INT NOT NULL  PRIMARY KEY AUTO_INCREMENT,
    type_of_plan VARCHAR(60) NOT NULL,
    value DECIMAL(3,2),
) engine = InnoDB;
CREATE TABLE SpotifyClone.artist(
    id_artist INT NOT NULL  PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(60) NOT NULL,
    colunaN tipo restricoes,
) engine = InnoDB;
CREATE TABLE SpotifyClone.artist(
    id_artist INT NOT NULL  PRIMARY KEY AUTO_INCREMENT,
    artist_name VARCHAR(60) NOT NULL,
    colunaN tipo restricoes,
) engine = InnoDB;
-- INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
-- VALUES
--   ('exemplo de dados 1', 'exemplo de dados A'),
--   ('exemplo de dados 2', 'exemplo de dados B'),
--   ('exemplo de dados 3', 'exemplo de dados C');
-- INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
-- VALUES
--   ('exemplo de dados 1', 'exemplo de dados X'),
--   ('exemplo de dados 2', 'exemplo de dados Y');
