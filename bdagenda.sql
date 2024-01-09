
CREATE SCHEMA IF NOT EXISTS BASEDATOS;
USE BASEDATOS;

DROP TABLE IF EXISTS agenda;
CREATE TABLE Distrito (
    id int PRIMARY KEY NOT NULL,
    Nombre VARCHAR(50)
);
CREATE TABLE agenda
 (codigoper                  VARCHAR(3)  NOT NULL,
  idDistrito                 int not null,
  nombre                     VARCHAR(45) NOT NULL,
  apellido                   VARCHAR(45) NOT NULL,
  direccion                  VARCHAR(45),
  telefijo                   VARCHAR(9),
  telefmovi                  VARCHAR(9),
  email                      VARCHAR(30),
  fbc                        VARCHAR(30),
  CONSTRAINT agenda_codigoper_pk PRIMARY KEY (codigoper));

ALTER TABLE agenda
ADD CONSTRAINT fk_Distrito_ID FOREIGN KEY (idDistrito) REFERENCES Distrito(id);


INSERT INTO Distrito VALUES(1,'Chimbote');
INSERT INTO Distrito VALUES(2,'Nuevo Chimbote');


INSERT INTO agenda VALUES ('1',1, 'carlos', 'serna','av. palmeras 145',
'043524875', '942587568','carlos@hotmail.com', 'carlos serna');
INSERT INTO agenda VALUES ('2',1, 'carmen', 'figueroa','av. alamos f-5',
'043154784', '943124578','carmen@hotmail.com', 'carmen figeroa');
INSERT INTO agenda VALUES ('3', 1,'juan', 'perez','av.pacaes',
'043758694', '943582674','juan@hotmail.com', 'juan perez');
INSERT INTO agenda VALUES ('4', 2,'jean', 'ramirez','av.pardo 580',
'043587469', '941748596','jean@hotmail.com', 'jean ramirez');
INSERT INTO agenda VALUES ('5', 2,'melisa', 'cavero','av.huaraz 220',
'043152648', '942121415','melisa@hotmail.com', 'melisa cavero');
INSERT INTO agenda VALUES ('6', 2,'klaus', 'arteaga','av.lima 145',
'048757686', '943332524','klaus@hotmail.com', 'klaus arteaga');
INSERT INTO agenda VALUES ('7', 1,'octavio', 'baldarrago','av.galvez 874',
'043584736', '941747485','octavio585@hotmail.com', 'octavio baldarrago');
INSERT INTO agenda VALUES ('8', 2,'angela', 'suarez','av.pardo 1894',
'043252526', '941741212','angela_humilde@hotmail.com', 'angela suarez');
INSERT INTO agenda VALUES ('9', 2,'angela', 'suarez','av.pardo 1894',
'043252526', '941741212','angela_humilde@hotmail.com', 'angela suarez');
INSERT INTO agenda VALUES ('10', 1,'antonhy', 'orbegozo','av.palmeras 456',
'043151919', '942321212','antonhyelgozo@hotmail.com', 'antonhy orbegozo');
INSERT INTO agenda VALUES ('11', 2, 'giancarlo', 'sarrin','av.huaraz 123',
'043411742', '974410547','giancarlosarrines@hotmail.com', 'giancarlo sarrin');
COMMIT;

