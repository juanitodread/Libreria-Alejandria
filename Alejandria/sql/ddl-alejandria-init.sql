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

--Este insert es necesario aqui
insert into Usuario(nombre, aPaterno, aMaterno, email, usuario, pass, respuestaSecreta, idMunicipio, idPreguntaSecreta, idUsuarioCreacion, idUsuarioActualizacion)
values('alejandría', 'alejandría', 'alejandría', 'alejandría@gmail.com', 'masteradmin', md5('masteradmin@alejandría'), md5('admin'), 1, 1, 1, 1);

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


/*
*TABLA ESTADO
*/
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

/*
*TABLA MUNICIPIO
*/
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









--------------------------------------FK-------------------------------------------------------
--FK USUARIO
alter table usuario
add constraint FK_IdMunicipio
foreign key (idMunicipio) references municipio(idMunicipio);

alter table usuario
add constraint FK_IdPreguntaSecreta
foreign key (idPreguntaSecreta) references PreguntaSecreta(idPreguntaSecreta);

alter table usuario
add constraint FK_IdUsuarioCreacion
foreign key (idUsuarioCreacion) references usuario(idUsuario);

alter table usuario
add constraint FK_IdUsuarioActualizacion
foreign key (idUsuarioActualizacion) references usuario(idUsuario);


--FK PAIS
alter table pais
add constraint FK_IdUsuarioCreacion
foreign key (idUsuarioCreacion) references usuario(idUsuario);

alter table pais
add constraint FK_IdUsuarioActualizacion
foreign key (idUsuarioActualizacion) references usuario(idUsuario);


--FK ESTADO
alter table Estado
add constraint FK_IDPAIS
foreign key (idPais) references Pais;

alter table Estado
add constraint FK_IDUSUARIOCREACION
foreign key (idUsuarioCreacion) references Usuario;

alter table Estado
add constraint FK_IDUSUARIOACTUALIZACION
foreign key (idUsuarioActualizacion) references Usuario;


--FK MUNICIPIO
alter table Municipio
add constraint FK_IDESTADO
foreign key (idEstado) references Estado;

alter table Municipio
add constraint FK_IDUSUARIOCREACION
foreign key (idUsuarioCreacion) references Usuario;

alter table Municipio
add constraint FK_IDUSUARIOACTUALIZACION
foreign key (idUsuarioActualizacion) references Usuario;


--FK PREGUNTA SECRETA
alter table preguntaSecreta
add constraint FK_IdUsuarioCreacion
foreign key (idUsuarioCreacion) references usuario(idUsuario);

alter table preguntaSecreta
add constraint FK_IdUsuarioActualizacion
foreign key (idUsuarioActualizacion) references usuario(idUsuario);


