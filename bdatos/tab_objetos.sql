# MySQL-Front Dump 2.5
#
# Host: localhost   Database: alcalsis
# --------------------------------------------------------
# Server version 3.23.36


#
# Table structure for table 'tab_objetos'
#

CREATE TABLE tab_objetos (
  ID_OBJETO char(3) NOT NULL default '',
  DESCRIPCION varchar(35) default NULL,
  ID_INSTANCIA varchar(40) default NULL,
  TABLA_ID_OBJETO varchar(33) default NULL,
  SUJETO tinyint(1) default NULL,
  PRIMARY KEY  (ID_OBJETO)
) TYPE=MyISAM;



#
# Dumping data for table 'tab_objetos'
#

INSERT INTO tab_objetos VALUES("APU", "Apuestas Lícitas", "Nro. Patente / Id. Establecimiento", "CUM_ESTABLECIMIENTOS", "0");
INSERT INTO tab_objetos VALUES("AUD", "Aseo Urbano Domiciliario", "Id.  Contribuyente", "", "0");
INSERT INTO tab_objetos VALUES("FAC", "Facturas/Cuotas/Porciones", "Cuota", "CUM_FAC", "0");
INSERT INTO tab_objetos VALUES("INM", "Propiedad Inmobiliaria", "Cod. Catastro / Id. Inmueble", "CUM_INMUEBLES", "0");
INSERT INTO tab_objetos VALUES("MER", "Mercado Municipal", "Id. Contribuyente", "", "0");
INSERT INTO tab_objetos VALUES("PIC", "Patente de Industria y Comercio", "Nro. Patente / Id. Establecimiento", "CUM_ESTABLECIMIENTOS", "0");
INSERT INTO tab_objetos VALUES("PUB", "Publicidad Comercial", "Nro. Publicidad / Id. Publicidad", "CUM_PUBLICIDADES", "0");
INSERT INTO tab_objetos VALUES("TAS", "Tasas", "Id. Contribuyente", "CUM_FAC", "0");
INSERT INTO tab_objetos VALUES("VEH", "Patente de Vehiculo", "Id. Contribuyente / Placas Vehiculo", "CUM_VEHICULOS", "0");
