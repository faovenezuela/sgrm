# MySQL-Front Dump 2.5
#
# Host: localhost   Database: alcalsis
# --------------------------------------------------------
# Server version 3.23.36


#
# Table structure for table 'tab_veh_tipo_uso'
#

CREATE TABLE tab_veh_tipo_uso (
  TIPO_VEHICULO smallint(2) NOT NULL default '0',
  DESCRIPCION varchar(150) NOT NULL default '',
  PRIMARY KEY  (TIPO_VEHICULO)
) TYPE=MyISAM;



#
# Dumping data for table 'tab_veh_tipo_uso'
#

INSERT INTO tab_veh_tipo_uso VALUES("1", "Autom�viles");
INSERT INTO tab_veh_tipo_uso VALUES("2", "Camionetas");
INSERT INTO tab_veh_tipo_uso VALUES("3", "Autom�viles de alquiler");
INSERT INTO tab_veh_tipo_uso VALUES("4", "Camionetas de pasajeros");
INSERT INTO tab_veh_tipo_uso VALUES("5", "Minibuses");
INSERT INTO tab_veh_tipo_uso VALUES("6", "Autobuses");
INSERT INTO tab_veh_tipo_uso VALUES("7", "Camionetas de carga");
INSERT INTO tab_veh_tipo_uso VALUES("8", "Camiones de 3 a 6 TM");
INSERT INTO tab_veh_tipo_uso VALUES("9", "Camiones de 6 a 10 TM");
INSERT INTO tab_veh_tipo_uso VALUES("10", "Remolques peque�os de 3 a 6 TM");
INSERT INTO tab_veh_tipo_uso VALUES("11", "Remolques peque�os de 6 a 10 TM");
INSERT INTO tab_veh_tipo_uso VALUES("12", "Gr�as");
INSERT INTO tab_veh_tipo_uso VALUES("13", "Motocicletas");
INSERT INTO tab_veh_tipo_uso VALUES("14", "Casas rodantes");
INSERT INTO tab_veh_tipo_uso VALUES("15", "Carrozas f�nebres");
INSERT INTO tab_veh_tipo_uso VALUES("16", "Ambulancias privadas");
