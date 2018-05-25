# MySQL-Front Dump 2.5
#
# Host: localhost   Database: alcalsis
# --------------------------------------------------------
# Server version 3.23.36


#
# Table structure for table 'veh_liquidacion'
#

CREATE TABLE veh_liquidacion (
  PLACA varchar(10) NOT NULL default '',
  AÑO varchar(4) NOT NULL default '',
  MONTO_ULT_LIQ decimal(30,2) default NULL,
  VALOR_FISCAL decimal(30,2) default NULL,
  STATU char(2) default NULL,
  PRIMARY KEY  (PLACA,AÑO)
) TYPE=MyISAM;

