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
  salt              varchar(50)                     not null,
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
  constraint UK_CodigoPais
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


--TABLA SUCURSAL
create sequence secIdSucursal
increment by 1 minvalue 1 maxvalue 999999999 start 1;

create table Sucursal(
    idSucursal              integer           default nextval('secIdSucursal')  not null,
    sucursal                varchar(100)                                        not null,
    calle                   varchar(100)                                        not null,
    cpostal                 varchar(5)                                          not null,
    colonia                 varchar(50)                                         not null,
    telefono                varchar(10)                                         null,
    idMunicipio             integer                                             not null,
    activo                  boolean           default TRUE                      not null,
    fechaCreacion           timestamp         default current_timestamp         not null,
    fechaActualizacion      timestamp         default current_timestamp         not null,
    idUsuarioCreacion       integer                                             not null,
    idUsuarioActualizacion  integer                                             not null,
    constraint PK_IdSucursal
        primary key (idSucursal),
    constraint UK_Sucursal
        unique (sucursal)
);


--TABLA DOMICILIOENTREGAVENTA
create sequence secIdDomicilioEntregaVenta
increment by 1 minvalue 1 maxvalue 999999999 start 1;

create table DomicilioEntregaVenta(
    idDomicilioEntregaVenta              integer           default nextval('secIdDomicilioEntregaVenta')  not null,
    calle                                varchar(100)                                                     not null,
    numero                               varchar(10)                                                      not null,
    numeroInterior                       varchar(10)                                                       null,
    colonia                              varchar(50)                                                      not null,
    cpostal                              varchar(5)                                                       not null,
    entreCalle1                          varchar(100)                                                     not null,
    entreCalle2                          varchar(100)                                                     null,
    referencia                           varchar(100)                                                     null,
    idMunicipio                          integer                                                          not null,
    activo                               boolean           default TRUE                                   not null,
    fechaCreacion                        timestamp         default current_timestamp                      not null,
    fechaActualizacion                   timestamp         default current_timestamp                      not null,
    idUsuarioCreacion                    integer                                                          not null,
    idUsuarioActualizacion               integer                                                          not null,
    constraint PK_IdDomicilioEntregaVenta
        primary key (idDomicilioEntregaVenta)
);



--TABLA SECCIONLIBRO
create sequence secIdSeccionLibro
increment by 1 minvalue 1 maxvalue 999999999 start 1;

create table SeccionLibro(
    idSeccionLibro                       integer           default nextval('secIdSeccionLibro')           not null,
    seccionLibro                         varchar(100)                                                     not null,
    codigo                               varchar(50)                                                      not null,
    activo                               boolean           default TRUE                                   not null,
    fechaCreacion                        timestamp         default current_timestamp                      not null,
    fechaActualizacion                   timestamp         default current_timestamp                      not null,
    idUsuarioCreacion                    integer                                                          not null,
    idUsuarioActualizacion               integer                                                          not null,
    constraint PK_IdSeccionLibro
        primary key (idSeccionLibro),
    constraint UK_seccionLibro
        unique (seccionLibro),
    constraint UK_CodigoSeccionLibro
        unique (codigo)
);



--TABLA IDIOMA
create sequence secIdIdioma
increment by 1 minvalue 1 maxvalue 999999999 start 1;

create table Idioma(
    idIdioma                             integer           default nextval('secIdIdioma')                 not null,
    idioma                               varchar(50)                                                      not null,
    codigo                               varchar(50)                                                      not null,
    activo                               boolean           default TRUE                                   not null,
    fechaCreacion                        timestamp         default current_timestamp                      not null,
    fechaActualizacion                   timestamp         default current_timestamp                      not null,
    idUsuarioCreacion                    integer                                                          not null,
    idUsuarioActualizacion               integer                                                          not null,
    constraint PK_IdIdioma
        primary key (idIdioma),
    constraint UK_Ididoma
        unique (idioma),
    constraint UK_CodigoIdioma
        unique (codigo)
);


 --TABLA AUTOR
create sequence secIdAutor
increment by 1 minvalue 1 maxvalue 999999999 start 1;

create table Autor(
    idAutor                              integer           default nextval('secIdAutor')                  not null,
    nombre                               varchar(100)                                                     not null,
    aPaterno                             varchar(100)                                                     not null,
    aMaterno                             varchar(100)                                                     not null,
    idMunicipio                          integer                                                          not null,
    activo                               boolean           default TRUE                                   not null,
    fechaCreacion                        timestamp         default current_timestamp                      not null,
    fechaActualizacion                   timestamp         default current_timestamp                      not null,
    idUsuarioCreacion                    integer                                                          not null,
    idUsuarioActualizacion               integer                                                          not null,
    constraint PK_IdAutor
        primary key (idAutor),
    constraint UK_Autor
        unique(nombre, aPaterno, aMaterno)
);



 --TABLA CLIENTE
create sequence secIdCliente
increment by 1 minvalue 1 maxvalue 999999999 start 1;

create table Cliente(
    idCliente                            integer           default nextval('secIdCliente')                not null,
    nombre                               varchar(100)                                                     not null,
    aPaterno                             varchar(100)                                                     not null,
    aMaterno                             varchar(100)                                                     not null,
    email                                varchar(100)                                                     not null,
    usuario                              varchar(50)                                                      not null,
    pass                                 varchar(50)                                                      not null,
    respuestaSecreta                     varchar(100)                                                     not null,
    fechaInicioSesion                    timestamp         default current_timestamp                      not null,
    idMunicipio                          integer                                                          not null,
    idPreguntaSecreta                    integer                                                          not null,
    activo                               boolean           default TRUE                                   not null,
    fechaCreacion                        timestamp         default current_timestamp                      not null,
    fechaActualizacion                   timestamp         default current_timestamp                      not null,
    constraint PK_IdCliente
        primary key (idCliente),
    constraint UK_Cliente
        unique(usuario)
);



--TABLA CUENTABANCARIA
create sequence secIdCuentaBancaria
increment by 1 minvalue 1 maxvalue 999999999 start 1;

create table CuentaBancaria(
    idCuentaBancaria                    integer           default nextval('secIdCuentaBancaria')         not null,
    nombreTarjeta                       varchar(50)                                                      not null,
    marca                               boolean                                                          not null,
    numeroTarjeta                       varchar(16)                                                      not null,
    digitosComprobacion                 varchar(4)                                                       not null,
    fechaExpiracion                     varchar(5)                                                       not null,
    idBanco                             integer                                                          not null,
    constraint PK_IdCuentaBancaria
        primary key (idCuentaBancaria)
);



--TABLA LIBRO
create sequence secIdLibro
increment by 1 minvalue 1 maxvalue 999999999 start 1;

create table Libro(
    idLibro                              integer           default nextval('secIdLibro')                  not null,
    titulo                               varchar(100)                                                     not null,
    isbn                                 varchar(30)                                                      not null,
    edicion                              integer                                                          not null,
    anio                                 integer                                                          not null,
    numPaginas                           integer                                                          not null,
    precio                               numeric(11, 2)                                                   not null,
    sinopsis                             varchar(300)                                                     null,
    portada                              bytea                                                            null,
    idSeccionLibro                       integer                                                          not null,
    idFormatoLibro                       integer                                                          not null,
    idIdioma                             integer                                                          not null,
    idEditorial                          integer                                                          not null,
    activo                               boolean           default TRUE                                   not null,
    fechaCreacion                        timestamp         default current_timestamp                      not null,
    fechaActualizacion                   timestamp         default current_timestamp                      not null,
    idUsuarioCreacion                    integer                                                          not null,
    idUsuarioActualizacion               integer                                                          not null,
    constraint PK_IdLibro
        primary key (idLibro),
    constraint UK_ISBN
        unique (isbn)
);


--TABLA VENTA
create sequence secIdVenta
increment by 1 minvalue 1 maxvalue 999999999 start 1;

create table Venta(
    idVenta                              integer           default nextval('secIdVenta')                  not null,
    fechaVenta                           timestamp         default current_timestamp                      not null,
    fechaEstimadaEntrega                 integer                                                          not null,
    total                                numeric(11, 2)                                                   not null,
    idCliente                            integer                                                          not null,
    idCuentaBancaria                     integer                                                          not null,
    idDomicilioEntregaVenta              integer                                                          not null,
    idSucursal                           integer                                                          not null,
    constraint PK_IdVenta
        primary key (idVenta)
);



--TABLA SUCURSALLIBRO
create sequence secIdSucursalLibro
increment by 1 minvalue 1 maxvalue 999999999 start 1;

create table SucursalLibro(
    idSucursalLibro                      integer           default nextval('secIdSucursalLibro')          not null,
    idSucursal                           integer                                                          not null,
    idLibro                              integer                                                          not null,
    constraint PK_IdSucursalLibro
        primary key (idSucursalLibro)
);

--TABLA AUTORLIBRO
create table AutorLibro(
    idAutor                              integer                                                          not null,
    idLibro                              integer                                                          not null,
    constraint PK_AutorLibro
        primary key (idAutor, idLibro)
);



--TABLA DETALLEVENTA
create sequence secIdDetalleVenta
increment by 1 minvalue 1 maxvalue 999999999 start 1;

create table DetalleVenta(
    idDetalleVenta                      integer           default nextval('secIdDetalleVenta')           not null,
    monto                               numeric(11, 2)                                                   not null,
    idVenta                             integer                                                          not null,
    idLibro                             integer                                                          not null,
    constraint PK_IdDetalleVenta
        primary key (idDetalleVenta)
);