--TABLA USUARIO
create sequence secIdUsuario
increment by 1 minvalue 1 maxvalue 999999999 start 1;

create table Usuario(
  idUsuario			integer		default nextVal('secIdUsuario')		not null,
  nombre			varchar(100)						not null,
  aPaterno			varchar(100)						not null,
  aMaterno			varchar(100)						not null,
  email				varchar(100)						not null,
  usuario			varchar(50)						not null,
  pass				varchar(50)						not null,
  avatar			bytea							null,
  respuestaSecreta		varchar(100)						not null,
  fechaInicioSesion		timestamp						null,
  idMunicipio			integer							not null,
  idPreguntaSecreta		integer							not null,
  activo			boolean		default TRUE				not null,
  fechaCreacion			timestamp	default current_timestamp		not null,
  fechaActualizacion		timestamp	default current_timestamp		not null,
  idUsuarioCreacion		integer							not null,
  idUsuarioActualizacion 	integer							not null,
  constraint PK_IdUsuario
	primary key(idUsuario),
  constraint UK_Usuario
	unique (usuario)
);

--TABLA PAIS
create sequence secIdPais
increment by 1 minvalue 1 maxvalue 999999999 start 1;

create table Pais(
  idPais			integer		default nextVal('secIdPais')		not null,
  pais				varchar(100)						not null,
  codigo			varchar(50)						not null,
  activo			boolean		default TRUE				not null,
  fechaCreacion			timestamp	default current_timestamp		not null,
  fechaActualizacion		timestamp	default current_timestamp		not null,
  idUsuarioCreacion		integer							not null,
  idUsuarioActualizacion 	integer							not null,
  constraint PK_IdPais
	primary key(idPais),
  constraint UK_Pais
	unique (pais),
  constraint UK_Codigo
	unique (codigo)
);



--TABLA ESTADO
create sequence secIdEstado
increment by 1 minvalue 1 maxvalue 999999999 start 1;

create table Estado
(
	idEstado		integer		default nextval('secIdEstado')	not null,
	estado			varchar(100)					not null,
	codigo			varchar(50)					not null,
	idPais			integer						not null,
	activo			boolean		default TRUE			not null,
	fechaCreacion		timestamp	default current_timestamp	not null,
	fechaActualizacion	timestamp	default current_timestamp	not null,
	idUsuarioCreacion	integer						not null,
	idUsuarioActualizacion	integer						not null,
	constraint PK_ESTADOIDESTADO 	primary key (idEstado),	
	constraint UK_ESATOESTADO 	unique(estado),
	constraint UK_ESTADOCODIGO 	unique(codigo)
);


--TABLA MUNICIPIO
create sequence secIdMunicipio
increment by 1 minvalue 1 maxvalue 999999999 start 1;

create table Municipio
(
	idMunicipio		integer		default nextval('secIdMunicipio') not null,
	municipio		varchar(100)					not null,
	codigo			varchar(50)					not null,
	idEstado		integer						not null,
	activo			boolean		default TRUE			not null,
	fechaCreacion		timestamp	default current_timestamp	not null,
	fechaActualizacion	timestamp	default current_timestamp	not null,
	idUsuarioCreacion	integer						not null,
	idUsuarioActualizacion	integer						not null,
	constraint PK_MUNICIPIOIDMUNICIPIO 	primary key (idMunicipio),	
	constraint UK_MUNICIPIOMUNICIPIO 	unique(municipio),
	constraint UK_MUNICIPIOCODIGO	 	unique(codigo)
);

--TABLA PPREGUNTASECRETA
create sequence secIdPreguntaSecreta
increment by 1 minvalue 1 maxvalue 999999999 start 1;

create table PreguntaSecreta(
  idPreguntaSecreta		integer		default nextVal('secIdPreguntaSecreta')	not null,
  preguntaSecreta		varchar(100)						not null,
  activo			boolean		default TRUE				not null,
  fechaCreacion			timestamp	default current_timestamp		not null,
  fechaActualizacion		timestamp	default current_timestamp		not null,
  idUsuarioCreacion		integer							not null,
  idUsuarioActualizacion 	integer							not null,
  constraint PK_IdPreguntaSecreta
	primary key(idPreguntaSecreta),
  constraint UK_PreguntaSecreta
	unique (preguntaSecreta)
);

--TABLA FORMATOLIBRO
create sequence secIdFormatoLibro
increment by 1 minvalue 1 maxvalue 999999999 start 1;

create table FormatoLibro
(
	idFormatoLibro		integer		default nextval('secIdEstado')	not null,
	formatoLibro		varchar(100)					not null,
	codigo			varchar(50)					not null,	
	activo			boolean		default TRUE			not null,
	fechaCreacion		timestamp	default current_timestamp	not null,
	fechaActualizacion	timestamp	default current_timestamp	not null,
	idUsuarioCreacion	integer						not null,
	idUsuarioActualizacion	integer						not null,
	constraint PK_FORMATOLIBRO 	primary key (idFormatoLibro),	
	constraint UK_FORMATOLIBRO 	unique(formatoLibro),
	constraint UK_FORMATOLIBROCODIGO unique(codigo)
);


--TABLA BANCO
create sequence secIdBanco
increment by 1 minvalue 1 maxvalue 999999999 start 1;

create table Banco
(
	idBanco			integer		default nextval('secIdEstado')	not null,
	banco			varchar(100)					not null,
	codigo			varchar(50)					not null,	
	activo			boolean		default TRUE			not null,
	fechaCreacion		timestamp	default current_timestamp	not null,
	fechaActualizacion	timestamp	default current_timestamp	not null,
	idUsuarioCreacion	integer						not null,
	idUsuarioActualizacion	integer						not null,
	constraint PK_IDBANCO 	primary key (idBanco),	
	constraint UK_BANCO 	unique(banco),
	constraint UK_BANCOCODIGO unique(codigo)
);

--TABLA EDITORIAL
create sequence secIdEditorial
increment by 1 minvalue 1 maxvalue 999999999 start 1;

create table Editorial
(
	idEditorial		integer		default nextval('secIdEstado')	not null,
	editorial		varchar(100)					not null,
	codigo			varchar(50)					not null,	
	idMunicipio		integer						not null,
	activo			boolean		default TRUE			not null,
	fechaCreacion		timestamp	default current_timestamp	not null,
	fechaActualizacion	timestamp	default current_timestamp	not null,
	idUsuarioCreacion	integer						not null,
	idUsuarioActualizacion	integer						not null,
	constraint PK_IDEDITORIAL 	primary key (idEditorial),	
	constraint UK_EDITORIAL 	unique(editorial),
	constraint UK_EDITORIALCODIGO	unique(codigo)
);
