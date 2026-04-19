CREATE DATABASE IF NOT EXISTS associacao_de_kart;
USE associacao_de_kart;

CREATE TABLE IF NOT EXISTS Temporada(
idTemporada INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
numero INT NOT NULL
);

CREATE TABLE IF NOT EXISTS Patrocinio(
idPatrocinio INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
nomePatrocinio VARCHAR(45) NOT NULL
);

CREATE TABLE IF NOT EXISTS Equipe(
idEquipe INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
Nome VARCHAR(100) NOT NULL,
Patrocinio INT,
FOREIGN KEY (Patrocinio)
REFERENCES Patrocinio (idPatrocinio)
);

CREATE TABLE IF NOT EXISTS Etapa(
idEtapa INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
local VARCHAR(100) NOT NULL,
data DATE NOT NULL,
hora VARCHAR(45) NOT NULL,
Temporada INT NOT NULL,
FOREIGN KEY (Temporada)
REFERENCES Temporada (idTemporada)
);



CREATE TABLE IF NOT EXISTS Piloto(
idPiloto INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
Nome VARCHAR(150) NOT NULL,
Peso FLOAT NOT NULL,
Capitao TINYINT NOT NULL,
Equipe INT NOT NULL,
nacionalidade VARCHAR(45) NOT NULL,
FOREIGN KEY (Equipe)
REFERENCES Equipe (idEquipe)
);



CREATE TABLE IF NOT EXISTS Etapa_has_Piloto(
Etapa INT NOT NULL,
Piloto INT NOT NULL,
PRIMARY KEY (Etapa, Piloto),
FOREIGN KEY (Etapa)
REFERENCES Etapa (idEtapa),
FOREIGN KEY (Piloto)
REFERENCES Piloto (idPiloto)
);

INSERT INTO Temporada (numero) VALUES (1);

INSERT INTO Patrocinio (nomePatrocinio) VALUES
('MotorTech Brasil'),
('Velocidade Extrema'),
('Alta Performance'),
('Turbo Racing'),
('Pneus ProDrive');

INSERT INTO Equipe (Nome, Patrocinio) VALUES
('Escuderia Veloz', 1),
('Rapidos & Furiosos', 2),
('Fênix Racing', 3),
('Equipe Tempestade', 4),
('Corredores de Aço', 5);

INSERT INTO Etapa (local, data, hora, Temporada) VALUES
('São Paulo', '2024-01-15', '14:00:00', 1),
('Rio de Janeiro', '2024-02-20', '16:00:00', 1),
('Campo Grande', '2024-03-18', '15:00:00', 1),
('Londrina', '2024-04-22', '13:00:00', 1),
('Porto Alegre', '2024-05-10', '10:00:00', 1);

INSERT INTO Piloto (Nome, Peso, Capitao, Equipe, nacionalidade) VALUES
('Mateus Silva', 68, 0, 2, 'Brasil'),
('Bruno Almeida', 78.3, 1, 2, 'Brasil'),
('Carla Pereira', 60, 1, 3, 'Portugal'),
('Gabriela Torres', 58.5, 0, 3, 'Brasil'),
('João Costa', 80.5, 0, 4, 'Brasil'),
('Thiago Santos', 72.5, 0, 4, 'Brasil'),
('Mariana Gomes', 62, 1, 5, 'Portugal'),
('Beatriz Lopes', 63.2, 1, 5, 'Portugal'),
('Lucas Andrade', 70.5, 1, 1, 'Brasil'),
('Renato Figueiredo', 75, 0, 1, 'Brasil');

INSERT INTO Etapa_has_Piloto (Etapa, Piloto) VALUES
(1,1),(1,2),(1,3),(1,4),(1,5),
(1,6),(1,7),(1,8),(1,9),(1,10);

SET SQL_SAFE_UPDATES = 0;

UPDATE Etapa
SET local = 'Salvador'
WHERE local = 'Campo Grande';

UPDATE Etapa
SET local = 'Goiânia'
WHERE local = 'Londrina';

UPDATE Equipe
SET Patrocinio = NULL
WHERE Nome = 'Corredores de Aço';

DELETE FROM Patrocinio
WHERE nomePatrocinio = 'Pneus ProDrive';

SELECT * FROM Temporada;

SELECT * FROM Patrocinio;

SELECT * FROM Equipe;

SELECT * FROM Etapa;

SELECT * FROM Piloto;

SELECT * FROM Etapa_has_Piloto;

SELECT t.idTemporada, t.numero FROM Temporada t;

SELECT p.idPatrocinio, p.nomePatrocinio FROM Patrocinio p;

SELECT e.idEquipe, e.Nome, p.nomePatrocinio FROM Equipe e
LEFT JOIN Patrocinio p ON e.Patrocinio = p.idPatrocinio;

SELECT e.idEtapa, e.local, e.data, e.hora, t.numero FROM Etapa e
LEFT JOIN Temporada t ON e.Temporada = t.idTemporada;

SELECT p.idPiloto, p.Nome, p.Peso, p.Capitao, e.Nome FROM Piloto p
LEFT JOIN Equipe e ON p.Equipe = e.idEquipe;

SELECT e.local, p.Nome FROM Etapa_has_Piloto ep
INNER JOIN Etapa e ON ep.Etapa = e.idEtapa
INNER JOIN Piloto p ON ep.Piloto = p.idPiloto;
