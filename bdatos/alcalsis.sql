# MySQL-Front Dump 2.5
#
# Host: localhost   Database: alcalsis
# --------------------------------------------------------
# Server version 3.23.36


#
# Table structure for table 'activ_dec'
#

CREATE TABLE activ_dec (
  NRO_PAT varchar(20) NOT NULL default '',
  COD_ACT varchar(8) NOT NULL default '',
  AÑO_DEC varchar(4) NOT NULL default '',
  NRO_DEC varchar(30) default NULL,
  FEC_DEC date default NULL,
  ING_BRU_01 double default NULL,
  MON_LIQ_01 double default NULL,
  CANT_UNI smallint(2) default NULL,
  PRIMARY KEY  (NRO_PAT,AÑO_DEC,COD_ACT)
) TYPE=MyISAM;



#
# Table structure for table 'activ_def'
#

CREATE TABLE activ_def (
  NRO_PAT varchar(20) NOT NULL default '',
  COD_ACT varchar(8) NOT NULL default '',
  FEC_DEF date default NULL,
  NO_EXISTE tinyint(1) default NULL,
  RAZON_SOCIAL varchar(50) default NULL,
  STATU char(2) default NULL,
  PRIMARY KEY  (NRO_PAT,COD_ACT)
) TYPE=MyISAM;



#
# Table structure for table 'actividades'
#

CREATE TABLE actividades (
  COD_ACTIVIDAD varchar(8) NOT NULL default '',
  DESCRIPCION varchar(120) default NULL,
  ALICUOTA double default NULL,
  U_T double default NULL,
  MONTO_MINIMO double default NULL,
  DECLARA_x_UNIDAD tinyint(1) default NULL,
  PRIMARY KEY  (COD_ACTIVIDAD)
) TYPE=MyISAM;



#
# Table structure for table 'alc_obj_avc'
#

CREATE TABLE alc_obj_avc (
  ID_AUTO double NOT NULL auto_increment,
  Nro_Plani_AVC varchar(14) NOT NULL default '',
  Cuota varchar(30) NOT NULL default '',
  Renglon float default NULL,
  Id_Objeto char(3) default NULL,
  Id_Instancia varchar(25) default NULL,
  Monto_Origi float default NULL,
  Rubro varchar(9) default NULL,
  Fec_AVC date default NULL,
  descuento float default NULL,
  Id_Aso varchar(10) default NULL,
  Cod_Recauda char(2) default NULL,
  Statu char(2) default NULL,
  Accion char(1) default NULL,
  PRIMARY KEY  (ID_AUTO)
) TYPE=MyISAM;



#
# Table structure for table 'alc_obj_liqs'
#

CREATE TABLE alc_obj_liqs (
  ID_AUTO double NOT NULL auto_increment,
  Nro_Plani_Pago varchar(14) NOT NULL default '',
  Cuota varchar(30) NOT NULL default '',
  Renglon float default NULL,
  Id_Objeto char(3) default NULL,
  Id_Instancia varchar(25) default NULL,
  Monto_Origi float default NULL,
  Rubro varchar(9) default NULL,
  Fec_Pago datetime default NULL,
  Xid_Contri varchar(14) default NULL,
  Xnombre varchar(100) default NULL,
  Xdescripcion varchar(200) default NULL,
  Xinstancia varchar(200) default NULL,
  Id_Contri varchar(14) default NULL,
  Tip_Liq char(3) default NULL,
  descuento float default NULL,
  voucher varchar(30) default NULL,
  monto_voucher float default NULL,
  Statu char(2) default NULL,
  usuario_liq smallint(2) default NULL,
  usuario_rec smallint(2) default NULL,
  Id_Aso varchar(12) default NULL,
  PRIMARY KEY  (ID_AUTO)
) TYPE=MyISAM;



#
# Table structure for table 'alcalsis_control_alcaldia'
#

CREATE TABLE alcalsis_control_alcaldia (
  Id_Alcaldia int(2) NOT NULL auto_increment,
  Nom_Alcaldia varchar(100) default NULL,
  Municipio varchar(100) default NULL,
  Estado varchar(50) default NULL,
  Periodo_Ejercicio varchar(4) default NULL,
  PRIMARY KEY  (Id_Alcaldia)
) TYPE=MyISAM;



#
# Table structure for table 'alcalsis_control_p_avc'
#

CREATE TABLE alcalsis_control_p_avc (
  Id_Alcaldia int(2) NOT NULL auto_increment,
  Nro_AVC_Ult varchar(20) default NULL,
  Nro_Transa_Ult varchar(20) default NULL,
  Ctrl_Date date default NULL,
  PRIMARY KEY  (Id_Alcaldia)
) TYPE=MyISAM;



#
# Table structure for table 'alcalsis_control_procesos'
#

CREATE TABLE alcalsis_control_procesos (
  Id_Alcaldia int(2) NOT NULL default '0',
  Periodo_Ejercicio varchar(4) default NULL,
  Nro_Liquida_Ult varchar(20) default NULL,
  Nro_Transa_Ult varchar(20) default NULL,
  Nro_Contri_Ult varchar(20) default NULL,
  Nro_Pic_Ult varchar(20) default NULL,
  Nro_Inm_Ult varchar(20) default NULL,
  Nro_Veh_Ult varchar(20) default NULL,
  Nro_Pub_Ult varchar(20) default NULL,
  Nro_Sol_Ult varchar(20) default NULL,
  Nro_Exo varchar(20) default NULL,
  Entidad varchar(80) default NULL,
  Pic_U_T double default NULL,
  Inm_U_T double default NULL,
  PUB_U_T double default NULL,
  NRO_RESOL int(11) default NULL,
  A_CONTRIBUYENTE int(11) default NULL,
  PRIMARY KEY  (Id_Alcaldia)
) TYPE=MyISAM;



#
# Table structure for table 'cont_certf_solvencia'
#

CREATE TABLE cont_certf_solvencia (
  CONT_CERTF int(11) NOT NULL default '0',
  PRIMARY KEY  (CONT_CERTF)
) TYPE=MyISAM;



#
# Table structure for table 'contribuyentes'
#

CREATE TABLE contribuyentes (
  Cedula_RIF varchar(50) NOT NULL default '',
  Login varchar(50) default NULL,
  Nombre_Empresa varchar(150) default NULL,
  Pass varchar(50) default NULL,
  statu char(2) default NULL,
  PRIMARY KEY  (Cedula_RIF)
) TYPE=MyISAM;



#
# Table structure for table 'control_de_reimpresion'
#

CREATE TABLE control_de_reimpresion (
  ID_AUTO double NOT NULL auto_increment,
  NRO_PLANI_PAGO varchar(20) default NULL,
  USUARIO varchar(30) default NULL,
  FECHA_REIMPRESIÓN varchar(30) default NULL,
  PRIMARY KEY  (ID_AUTO)
) TYPE=MyISAM;



#
# Table structure for table 'establecimientos'
#

CREATE TABLE establecimientos (
  NRO_PAT varchar(20) NOT NULL default '',
  SECTOR smallint(2) default NULL,
  COD_CATA varchar(20) default NULL,
  RAZON_SOCIAL varchar(85) default NULL,
  DIRECCION varchar(85) default NULL,
  ACTIVIDADES varchar(65) default NULL,
  FECHA_INI date default '0000-00-00',
  FECHA_INS datetime default NULL,
  ORG char(2) default NULL,
  OBREROS smallint(2) default NULL,
  EMPLEADOS smallint(2) default NULL,
  AREA double default NULL,
  REG_MER varchar(85) default NULL,
  CAPITAL float(8,2) default NULL,
  PROPIETARIO varchar(85) default NULL,
  CEDULA varchar(15) default NULL,
  DIRECCION_PRO varchar(100) default NULL,
  TELEFONO varchar(15) default NULL,
  FECHA_ANUL varchar(255) default NULL,
  EXONERADO char(1) default NULL,
  RIF_CID varchar(15) default NULL,
  DECLARA_NRO varchar(17) default NULL,
  DECLARA_AÑO varchar(4) default NULL,
  DECLARA_FECHA datetime default NULL,
  MONTO_LIQUIDADO_ANT float default NULL,
  MONTO_INGRESO_BRU_ANT float default NULL,
  MONTO_LIQUIDADO_ACT float default NULL,
  MONTO_INGRESO_BRU_ACT float default NULL,
  STATU char(2) default NULL,
  FECHA_CAMBIO_STATUS datetime default NULL,
  REPRESENTANTE_LEGAL varchar(50) default NULL,
  CEDULA_REPRES_LEGAL varchar(15) default NULL,
  EMAIL varchar(50) default NULL,
  NACIONALIDAD char(1) default NULL,
  PRIMARY KEY  (NRO_PAT)
) TYPE=MyISAM;



#
# Table structure for table 'facturas'
#

CREATE TABLE facturas (
  ID_AUTO double NOT NULL auto_increment,
  ID_OBJ char(3) NOT NULL default '',
  ID_INSTANCIA varchar(30) default NULL,
  CONCEPTO varchar(9) default NULL,
  CUOTA varchar(7) default NULL,
  ID_ASO varchar(10) default NULL,
  NRO_PLANI_PAGO varchar(14) default NULL,
  NRO_PLANI_AVC varchar(14) default NULL,
  AÑO varchar(4) default NULL,
  FEC_EMI datetime default NULL,
  FEC_CANCEL datetime default NULL,
  MONTO double default NULL,
  STATU char(2) default NULL,
  FEC_VIG datetime default NULL,
  RECARGO float default NULL,
  MORA float default NULL,
  DESCUENTO float default NULL,
  COD_RECAUDA char(2) default NULL,
  FEC_ASIGNA datetime default NULL,
  USUARIO_LIQ smallint(6) default NULL,
  USUARIO_REC smallint(6) default NULL,
  PRIMARY KEY  (ID_AUTO)
) TYPE=MyISAM;



#
# Table structure for table 'forma_de_pago'
#

CREATE TABLE forma_de_pago (
  Nro_Plani_Pago varchar(14) NOT NULL default '',
  Renglon float default NULL,
  Id_Forma_Pago varchar(10) default NULL,
  Banco smallint(2) default NULL,
  Nro varchar(30) default NULL,
  Monto float default NULL,
  Fec_pago datetime default NULL,
  Id_Instancia varchar(25) default NULL,
  Id_Objeto varchar(12) default NULL,
  Id_Rubro varchar(9) default NULL,
  Id_Voucher varchar(12) default NULL,
  statu char(2) default NULL,
  usuario smallint(2) default NULL,
  usuario_mod_status varchar(30) default NULL,
  Fecha_Mod_Status varchar(30) default NULL,
  PRIMARY KEY  (Nro_Plani_Pago)
) TYPE=MyISAM;



#
# Table structure for table 'grupos_alcalsis'
#

CREATE TABLE grupos_alcalsis (
  id_grupo varchar(14) NOT NULL default '',
  descripción_grupo varchar(50) default NULL,
  PRIMARY KEY  (id_grupo)
) TYPE=MyISAM;



#
# Table structure for table 'inm_liquidaciones'
#

CREATE TABLE inm_liquidaciones (
  bif varchar(7) NOT NULL default '',
  año_fis varchar(4) NOT NULL default '',
  cod_cata varchar(25) default NULL,
  val_bas double default NULL,
  base_imp double default NULL,
  tarifa char(2) default NULL,
  escala char(2) default NULL,
  imp_anua float default NULL,
  mon_des float default NULL,
  mon_recar float default NULL,
  fec_emi date default NULL,
  PRIMARY KEY  (bif,año_fis)
) TYPE=MyISAM;



#
# Table structure for table 'inmuebles'
#

CREATE TABLE inmuebles (
  bif varchar(7) NOT NULL default '',
  COD_CATA varchar(25) default NULL,
  DIR_INM varchar(180) default NULL,
  FEC_PROTO date default NULL,
  FEC_BIF date default NULL,
  FEC_ULT_AVA date default NULL,
  TIP_SUELO char(2) default NULL,
  EDIF char(1) default NULL,
  USO char(2) default NULL,
  SUBUSO char(2) default NULL,
  APE_NOM_PRO1 varchar(50) default NULL,
  CED_PRO1 varchar(10) default NULL,
  DIRPRO1 varchar(100) default NULL,
  FNAC_PRO1 varchar(8) default NULL,
  APE_NOM_PRO2 varchar(50) default NULL,
  CED_PRO2 varchar(10) default NULL,
  DIRPRO2 varchar(100) default NULL,
  FNAC_PRO2 varchar(8) default NULL,
  APE_NOM_PRO3 varchar(40) default NULL,
  CED_PRO3 varchar(12) default NULL,
  DIRPRO3 varchar(40) default NULL,
  FNAC_PRO3 varchar(8) default NULL,
  EXE char(1) default NULL,
  EXO char(1) default NULL,
  VALOR_DEC double default NULL,
  VALOR_AVALUO double default NULL,
  VALOR_BASE double default NULL,
  TERRENO varchar(200) default NULL,
  CONSTRUCCION varchar(150) default NULL,
  TOTAL varchar(150) default NULL,
  DESGRAVAMENES varchar(150) default NULL,
  EXE_EXO varchar(150) default NULL,
  OBSERVACIONES text,
  TRIMESTRE double default NULL,
  ANUAL double default NULL,
  SECTOR varchar(50) default NULL,
  PRIMARY KEY  (bif)
) TYPE=MyISAM;



#
# Table structure for table 'objetos_genericos_recauda'
#

CREATE TABLE objetos_genericos_recauda (
  Id_Objeto varchar(13) default NULL,
  Id_Instancia varchar(50) default NULL,
  Id_Contri varchar(13) default NULL,
  Rif varchar(14) default NULL,
  Nombre01 varchar(65) default NULL,
  Nombre02 varchar(65) default NULL,
  Direccion varchar(100) default NULL,
  Cod_Cata varchar(14) default NULL,
  Cod_Ubica varchar(14) default NULL,
  Fec_Ini_Ejer datetime default NULL,
  Fec_Fin_Ejer datetime default NULL,
  Fec_Ult_Decla datetime default NULL,
  Cobrador varchar(4) default NULL,
  Capital_Sucri float default NULL,
  Telefono_Pic varchar(15) default NULL,
  Email_Pic varchar(30) default NULL,
  Cid_Contac varchar(11) default NULL,
  Nom_Contac varchar(65) default NULL,
  Id_Solicitud varchar(10) default NULL,
  Status_Solicitud varchar(12) default NULL,
  Fec_Solicitud datetime default NULL,
  Fec_Registro datetime default NULL,
  Zona varchar(10) default NULL,
  Fiscal varchar(4) default NULL,
  id_auto bigint(20) NOT NULL auto_increment,
  PRIMARY KEY  (id_auto)
) TYPE=MyISAM;



#
# Table structure for table 'presu_ing_diario'
#

CREATE TABLE presu_ing_diario (
  Id_Rubro varchar(12) NOT NULL default '',
  Descripcion varchar(35) default NULL,
  Monto double default NULL,
  Fecha date default NULL,
  PRIMARY KEY  (Id_Rubro)
) TYPE=MyISAM;



#
# Table structure for table 'pub_liquidacion'
#

CREATE TABLE pub_liquidacion (
  ID_PUB varchar(10) NOT NULL default '',
  AÑO_DEC varchar(4) NOT NULL default '',
  FEC_DEC date default NULL,
  COD_PUB char(2) default NULL,
  CANTIDAD int(11) default NULL,
  MONTO_UNI double default NULL,
  MONTO double default NULL,
  NRO_PAT varchar(15) default NULL,
  PORCIONES smallint(2) default NULL,
  PRECAN_01 char(1) default NULL,
  PRECAN_02 char(1) default NULL,
  PRIMARY KEY  (ID_PUB,AÑO_DEC)
) TYPE=MyISAM;



#
# Table structure for table 'publicidades'
#

CREATE TABLE publicidades (
  ID_PUB varchar(10) NOT NULL default '',
  FEC_DES date default NULL,
  NRO_PAT varchar(20) default NULL,
  NOM_RAZON_SOCIAL varchar(85) default NULL,
  RIF_PIC varchar(16) default NULL,
  DIRECCION_PIC varchar(65) default NULL,
  PRO_REP_LEG varchar(65) default NULL,
  CID_PRO_REP varchar(10) default NULL,
  DIRECCION_PRO_REP varchar(65) default NULL,
  COD_PUB char(2) default NULL,
  LARGO double default NULL,
  ALTO double default NULL,
  AREA double default NULL,
  CANT_EJEM int(11) default NULL,
  FEC_INS_PUB date default NULL,
  MONTO double default NULL,
  MENSAJE varchar(200) default NULL,
  LOCALIZACION varchar(65) default NULL,
  TIP_SER char(1) default NULL,
  CIGA_LICO char(1) default NULL,
  IDIOMA char(1) default NULL,
  EXT_INT char(1) default NULL,
  AUMENTO double default NULL,
  REBAJA double default NULL,
  STATU char(2) default NULL,
  SECTOR char(3) default NULL,
  FEC_INSTALA date default NULL,
  FEC_HAS date default NULL,
  PATH varchar(255) default NULL,
  PRIMARY KEY  (ID_PUB)
) TYPE=MyISAM;



#
# Table structure for table 'sis_sub_servicios'
#

CREATE TABLE sis_sub_servicios (
  Id_auto double NOT NULL auto_increment,
  Id_Servicio smallint(6) default NULL,
  Area_Funcional smallint(6) default NULL,
  Clase varchar(30) default NULL,
  Descripción varchar(200) default NULL,
  Operativo tinyint(1) default NULL,
  Forma_Principal varchar(33) default NULL,
  Sistema varchar(10) default NULL,
  Subsistema varchar(10) default NULL,
  PRIMARY KEY  (Id_auto)
) TYPE=MyISAM;



#
# Table structure for table 'tab_areas_fun'
#

CREATE TABLE tab_areas_fun (
  Id_Area_Fun smallint(6) NOT NULL default '0',
  Descripcion_Corta varchar(50) default NULL,
  Descripcion_Larga text,
  PRIMARY KEY  (Id_Area_Fun)
) TYPE=MyISAM;



#
# Table structure for table 'tab_banco'
#

CREATE TABLE tab_banco (
  Id_Banco int(4) NOT NULL default '0',
  Banco varchar(150) default NULL,
  PRIMARY KEY  (Id_Banco)
) TYPE=MyISAM;



#
# Table structure for table 'tab_cal_pub'
#

CREATE TABLE tab_cal_pub (
  COD_PUB char(2) NOT NULL default '',
  DESCRIPCION varchar(150) default NULL,
  CANT double default NULL,
  U_T double default NULL,
  TIP_UNI varchar(10) default NULL,
  EVE_PER varchar(12) default NULL,
  MONTO double(8,2) default NULL,
  PRIMARY KEY  (COD_PUB)
) TYPE=MyISAM;



#
# Table structure for table 'tab_clave'
#

CREATE TABLE tab_clave (
  Identificador char(3) NOT NULL default '',
  Pass varchar(50) default NULL,
  Id_usuario int(11) default NULL,
  PRIMARY KEY  (Identificador)
) TYPE=MyISAM;



#
# Table structure for table 'tab_conceptos_original'
#

CREATE TABLE tab_conceptos_original (
  CONCEPTO varchar(10) NOT NULL default '',
  Id_Obj char(3) default NULL,
  Descripcion varchar(150) default NULL,
  PRIMARY KEY  (CONCEPTO)
) TYPE=MyISAM;



#
# Table structure for table 'tab_de_reportes'
#

CREATE TABLE tab_de_reportes (
  ID_SERVICIO varchar(10) NOT NULL default '',
  Id_Obj char(3) default NULL,
  Descripcion varchar(150) default NULL,
  FORMA_PRINCIPAL varchar(40) default NULL,
  NOMBRE_REPORTE varchar(50) default NULL,
  PRIMARY KEY  (ID_SERVICIO)
) TYPE=MyISAM;



#
# Table structure for table 'tab_id_obj'
#

CREATE TABLE tab_id_obj (
  ID_AUTO double NOT NULL auto_increment,
  Descripcion varchar(35) default NULL,
  Id_Obj char(3) default NULL,
  PRIMARY KEY  (ID_AUTO)
) TYPE=MyISAM;



#
# Table structure for table 'tab_inm_inflacion'
#

CREATE TABLE tab_inm_inflacion (
  ID_AUTO double NOT NULL auto_increment,
  AÑO_FISCAL varchar(4) default NULL,
  IND_INFLACION float(4,2) default NULL,
  PRIMARY KEY  (ID_AUTO)
) TYPE=MyISAM;



#
# Table structure for table 'tab_inm_tarifas'
#

CREATE TABLE tab_inm_tarifas (
  TARIFA float NOT NULL default '0',
  BS_DESDE_1 float default NULL,
  BS_HASTA_1 float default NULL,
  ALICUO_1 float(8,5) default NULL,
  BS_DESDE_2 float default NULL,
  BS_HASTA_2 float default NULL,
  ALICUO_2 float(8,5) default NULL,
  BS_DESDE_3 float default NULL,
  BS_HASTA_3 float default NULL,
  ALICUO_3 float(8,5) default NULL,
  BS_DESDE_4 float default NULL,
  BS_HASTA_4 float default NULL,
  ALICUO_4 float(8,5) default NULL,
  U_T float default NULL,
  upsize_ts varchar(8) binary default NULL,
  PRIMARY KEY  (TARIFA)
) TYPE=MyISAM;



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
# Table structure for table 'tab_recaudador'
#

CREATE TABLE tab_recaudador (
  Id_Recaudador char(2) NOT NULL default '',
  Nombre varchar(50) default NULL,
  Cid varchar(10) default NULL,
  Tel varchar(10) default NULL,
  Direccion_Hab varchar(65) default NULL,
  Pic_Comi_Bs float default NULL,
  Inm_Comi_Bs float default NULL,
  Pub_Comi_Bs float default NULL,
  Veh_Comi_Bs float default NULL,
  Otros_Comi_Bs float default NULL,
  Apu_Comi_Bs float default NULL,
  Status enum('True','False') default NULL,
  PRIMARY KEY  (Id_Recaudador)
) TYPE=MyISAM;



#
# Table structure for table 'tab_rubros'
#

CREATE TABLE tab_rubros (
  Concepto varchar(9) NOT NULL default '',
  Id_Obj char(3) default NULL,
  Descripcion varchar(100) default NULL,
  Liquidable tinyint(1) default NULL,
  Aforador varchar(50) default NULL,
  Liquidador varchar(50) default NULL,
  PRIMARY KEY  (Concepto)
) TYPE=MyISAM;



#
# Table structure for table 'tab_rubros_incidencia'
#

CREATE TABLE tab_rubros_incidencia (
  AÑO varchar(4) NOT NULL default '',
  Cod_Rubro varchar(9) NOT NULL default '',
  Id_Obj char(3) default NULL,
  Descripcion varchar(100) default NULL,
  Ene_Mon float(8,2) default NULL,
  Ene_Can int(4) default NULL,
  Feb_Mon float(8,2) default NULL,
  Feb_Can int(4) default NULL,
  Mar_Mon float(8,2) default NULL,
  Mar_Can int(4) default NULL,
  Abr_Mon float(8,2) default NULL,
  Abr_Can int(4) default NULL,
  May_Mon float(8,2) default NULL,
  May_Can int(4) default NULL,
  Jun_Mon float(8,2) default NULL,
  Jun_Can int(4) default NULL,
  Jul_Mon float(8,2) default NULL,
  Jul_Can int(4) default NULL,
  Ago_Mon float(8,2) default NULL,
  Ago_Can int(4) default NULL,
  Sep_Mon float(8,2) default NULL,
  Sep_Can int(4) default NULL,
  Oct_Mon float(8,2) default NULL,
  Oct_Can int(4) default NULL,
  Nov_Mon float(8,2) default NULL,
  Nov_Can int(4) default NULL,
  Dic_Mon float(8,2) default NULL,
  Dic_Can int(4) default NULL,
  Estimado float default NULL,
  Rea float default NULL,
  Comprometido float default NULL,
  PRIMARY KEY  (AÑO,Cod_Rubro)
) TYPE=MyISAM;



#
# Table structure for table 'tab_subuso'
#

CREATE TABLE tab_subuso (
  USO char(2) NOT NULL default '',
  DESCRIPCION varchar(150) NOT NULL default '',
  PRIMARY KEY  (USO)
) TYPE=MyISAM;



#
# Table structure for table 'tab_tasas'
#

CREATE TABLE tab_tasas (
  ID_AUTO double NOT NULL auto_increment,
  CONCEPTO varchar(9) NOT NULL default '',
  ID_OBJ char(3) NOT NULL default '',
  DESCRIPCION varchar(100) default NULL,
  LIQUIDABLE tinyint(1) default NULL,
  AFORADOR varchar(50) default NULL,
  LIQUIDADOR varchar(50) default NULL,
  PRIMER_FOLIO float default NULL,
  U_T_1 varchar(10) default NULL,
  BS1 float default NULL,
  SIG_FOLIOS float default NULL,
  U_T_2 varchar(10) default NULL,
  BS2 float default NULL,
  upsize_ts varchar(8) binary default NULL,
  PRIMARY KEY  (ID_AUTO)
) TYPE=MyISAM;



#
# Table structure for table 'tab_traduce_rubros'
#

CREATE TABLE tab_traduce_rubros (
  CONCEPTO varchar(9) NOT NULL default '',
  CONTRADU varchar(9) default NULL,
  DESCRIPCION varchar(100) default NULL,
  PRIMARY KEY  (CONCEPTO)
) TYPE=MyISAM;



#
# Table structure for table 'tab_veh_marca'
#

CREATE TABLE tab_veh_marca (
  COD_MARCA smallint(2) NOT NULL default '0',
  MARCA varchar(50) default NULL,
  PRIMARY KEY  (COD_MARCA)
) TYPE=MyISAM;



#
# Table structure for table 'tab_veh_modelo'
#

CREATE TABLE tab_veh_modelo (
  COD_MARCA smallint(2) NOT NULL default '0',
  COD_MODELO smallint(2) NOT NULL default '0',
  AÑO int(11) NOT NULL default '0',
  MODELO_DESC varchar(65) default NULL,
  COSTO double(8,2) default NULL,
  PRIMARY KEY  (COD_MARCA,AÑO,COD_MODELO)
) TYPE=MyISAM;



#
# Table structure for table 'tab_veh_tarifas'
#

CREATE TABLE tab_veh_tarifas (
  TARIFA_USO smallint(2) NOT NULL default '0',
  CANTIDAD double(8,2) default NULL,
  PRIMARY KEY  (TARIFA_USO)
) TYPE=MyISAM;



#
# Table structure for table 'tab_veh_tipo_uso'
#

CREATE TABLE tab_veh_tipo_uso (
  TIPO_VEHICULO smallint(2) NOT NULL default '0',
  DESCRIPCION varchar(150) NOT NULL default '',
  PRIMARY KEY  (TIPO_VEHICULO)
) TYPE=MyISAM;



#
# Table structure for table 'tabla_cargos'
#

CREATE TABLE tabla_cargos (
  ID_CARGO int(11) NOT NULL default '0',
  CARGO varchar(50) default NULL,
  NOMBRE_CARGO varchar(50) default NULL,
  ENCARGADO varchar(50) default NULL,
  PRIMARY KEY  (ID_CARGO)
) TYPE=MyISAM;



#
# Table structure for table 'tabla_org'
#

CREATE TABLE tabla_org (
  ORG char(2) NOT NULL default '',
  DESCRIPCION varchar(35) NOT NULL default '',
  PRIMARY KEY  (ORG)
) TYPE=MyISAM;



#
# Table structure for table 'tabla_sectores'
#

CREATE TABLE tabla_sectores (
  SECTOR smallint(2) NOT NULL default '0',
  NOMBRE varchar(65) default NULL,
  CATASTRO varchar(12) default NULL,
  PRIMARY KEY  (SECTOR)
) TYPE=MyISAM;



#
# Table structure for table 'tabla_status_avc'
#

CREATE TABLE tabla_status_avc (
  STATU char(2) NOT NULL default '',
  DESCRIPCION varchar(20) NOT NULL default '',
  PRIMARY KEY  (STATU)
) TYPE=MyISAM;



#
# Table structure for table 'tabla_status_pic'
#

CREATE TABLE tabla_status_pic (
  STATU char(2) NOT NULL default '',
  DESCRIPCION varchar(20) NOT NULL default '',
  PRIMARY KEY  (STATU)
) TYPE=MyISAM;



#
# Table structure for table 'tabla_tipo_suelo'
#

CREATE TABLE tabla_tipo_suelo (
  TIPO_SUELO char(2) NOT NULL default '',
  DESCRIPCION varchar(150) NOT NULL default '',
  PRIMARY KEY  (TIPO_SUELO)
) TYPE=MyISAM;



#
# Table structure for table 'tabla_usos'
#

CREATE TABLE tabla_usos (
  USO char(2) NOT NULL default '',
  DESCRIPCION varchar(150) NOT NULL default '',
  PRIMARY KEY  (USO)
) TYPE=MyISAM;



#
# Table structure for table 'tabla_valida_solo'
#

CREATE TABLE tabla_valida_solo (
  ID_AUTO int(11) NOT NULL auto_increment,
  VALIDA_SOLO varchar(40) NOT NULL default '',
  PRIMARY KEY  (ID_AUTO)
) TYPE=MyISAM;



#
# Table structure for table 'tabla_veh_valores'
#

CREATE TABLE tabla_veh_valores (
  COD_MARCA smallint(2) NOT NULL default '0',
  COD_MODELO smallint(2) NOT NULL default '0',
  AÑO int(11) NOT NULL default '0',
  MARCA varchar(65) default NULL,
  MODELO varchar(65) default NULL,
  COSTO double default NULL,
  PRIMARY KEY  (COD_MARCA,AÑO,COD_MODELO)
) TYPE=MyISAM;



#
# Table structure for table 'usuarios_alcalsis'
#

CREATE TABLE usuarios_alcalsis (
  id_usuarios int(4) NOT NULL auto_increment,
  nombre_usuario varchar(30) default NULL,
  clave_usuario varchar(20) default NULL,
  id_grupo char(2) default NULL,
  statu bigint(20) default NULL,
  path_foto varchar(50) default NULL,
  flag bigint(20) default NULL,
  Id_Rol varchar(12) default NULL,
  Nombre_Completo varchar(50) default NULL,
  PRIMARY KEY  (id_usuarios)
) TYPE=MyISAM;



#
# Table structure for table 'veh_liquidacion'
#

CREATE TABLE veh_liquidacion (
  PLACA varchar(10) NOT NULL default '',
  AÑO varchar(4) default NULL,
  MONTO_ULT_LIQ double default NULL,
  VALOR_FISCAL double default NULL,
  STATU char(2) default NULL,
  PRIMARY KEY  (PLACA)
) TYPE=MyISAM;



#
# Table structure for table 'vehiculos'
#

CREATE TABLE vehiculos (
  PLACA varchar(20) NOT NULL default '',
  NRO_PAT varchar(20) default NULL,
  NOMBRE varchar(85) default NULL,
  CI_RIF varchar(12) default NULL,
  TEL varchar(15) default NULL,
  DIRECCION varchar(85) default NULL,
  TIP_USO smallint(2) default NULL,
  FEC_ADQ date default NULL,
  COSTO float default NULL,
  FEC_INS date default NULL,
  FEC_REG date default NULL,
  COD_MARCA smallint(2) default NULL,
  COD_MODELO smallint(2) default NULL,
  AÑO_VEH char(2) default NULL,
  MARCA varchar(50) default NULL,
  MODELO varchar(50) default NULL,
  AÑO_REG char(2) default NULL,
  FEC_ULT_PAGO date default NULL,
  AÑO_ULT_LIQ varchar(4) default NULL,
  MONTO_ULT_LIQ float default NULL,
  VALOR_FISCAL float default NULL,
  PESO float default NULL,
  IMPUESTO_ANUAL float default NULL,
  RIF varchar(12) default NULL,
  PRIMARY KEY  (PLACA)
) TYPE=MyISAM;

