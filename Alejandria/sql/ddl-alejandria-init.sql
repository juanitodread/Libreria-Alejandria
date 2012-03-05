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
alter table Estado add constraint FK_IDPAIS foreign key (idPais) references Pais;
alter table Estado add constraint FK_IDUSUARIOCREACION foreign key (idUsuarioCreacion) references Usuario;
alter table Estado add constraint FK_IDUSUARIOACTUALIZACION foreign key (idUsuarioActualizacion) references Usuario;
*/

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

/*
alter table Municipio add constraint FK_IDESTADO foreign key (idEstado) references Estado;
alter table Municipio add constraint FK_IDUSUARIOCREACION foreign key (idUsuarioCreacion) references Usuario;
alter table Municipio add constraint FK_IDUSUARIOACTUALIZACION foreign key (idUsuarioActualizacion) references Usuario;
*/
