# MySQL-Front Dump 2.5
#
# Host: localhost   Database: alcalsis
# --------------------------------------------------------
# Server version 3.23.36


#
# Table structure for table 'tab_veh_tarifas'
#

CREATE TABLE tab_veh_tarifas (
  TARIFA_USO smallint(2) NOT NULL default '0',
  CANTIDAD decimal(10,2) default NULL,
  UT tinyint(3) unsigned default NULL,
  TARIFA_3 decimal(10,3) default NULL,
  PRIMARY KEY  (TARIFA_USO)
) TYPE=MyISAM;



#
# Dumping data for table 'tab_veh_tarifas'
#

INSERT INTO tab_veh_tarifas VALUES("1", "1200.00", NULL, "0.005");
INSERT INTO tab_veh_tarifas VALUES("2", "1500.00", NULL, "0.005");
INSERT INTO tab_veh_tarifas VALUES("3", "1800.00", NULL, "0.005");
INSERT INTO tab_veh_tarifas VALUES("4", "2700.00", NULL, "0.005");
INSERT INTO tab_veh_tarifas VALUES("5", "3850.00", NULL, "0.001");
INSERT INTO tab_veh_tarifas VALUES("6", "5000.00", NULL, "0.001");
INSERT INTO tab_veh_tarifas VALUES("7", "2100.00", NULL, "0.001");
INSERT INTO tab_veh_tarifas VALUES("8", "3000.00", NULL, "0.001");
INSERT INTO tab_veh_tarifas VALUES("9", "4000.00", NULL, "0.001");
INSERT INTO tab_veh_tarifas VALUES("10", "6000.00", NULL, "0.001");
INSERT INTO tab_veh_tarifas VALUES("11", "8000.00", NULL, "0.001");
INSERT INTO tab_veh_tarifas VALUES("12", "6000.00", NULL, "0.001");
INSERT INTO tab_veh_tarifas VALUES("13", "1200.00", NULL, "0.005");
INSERT INTO tab_veh_tarifas VALUES("14", "2100.00", NULL, "0.005");
INSERT INTO tab_veh_tarifas VALUES("15", "2700.00", NULL, "0.005");
INSERT INTO tab_veh_tarifas VALUES("16", "2700.00", NULL, "0.005");
