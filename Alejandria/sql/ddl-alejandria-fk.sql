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

--FK FORMATOLIBRO
alter table FormatoLibro
add constraint FK_IDUSUARIOCREACION
foreign key (idUsuarioCreacion) references Usuario;

alter table FormatoLibro
add constraint FK_IDUSUARIOACTUALIZACION
foreign key (idUsuarioActualizacion) references Usuario;

--FK BANCO
alter table Banco
add constraint FK_IDUSUARIOCREACION
foreign key (idUsuarioCreacion) references Usuario;

alter table Banco
add constraint FK_IDUSUARIOACTUALIZACION
foreign key (idUsuarioActualizacion) references Usuario;

--FK EDITORIAL
alter table Editorial
add constraint FK_IDMUNICIPIO
foreign key (idMunicipio) references Municipio;

alter table Editorial
add constraint FK_IDUSUARIOCREACION
foreign key (idUsuarioCreacion) references Usuario;

alter table Editorial
add constraint FK_IDUSUARIOACTUALIZACION
foreign key (idUsuarioActualizacion) references Usuario;



--FK SUCURSAL
alter table Sucursal
add constraint FK_IDMUNICIPIO
foreign key (idMunicipio) references Municipio;

alter table Sucursal
add constraint FK_IDUSUARIOCREACION
foreign key (idUsuarioCreacion) references Usuario;

alter table Sucursal
add constraint FK_IDUSUARIOACTUALIZACION
foreign key (idUsuarioActualizacion) references Usuario;



--FK DOMICILIOENTREGAVENTA
alter table DomicilioEntregaVenta
add constraint FK_IDMUNICIPIO
foreign key (idMunicipio) references Municipio;

alter table DomicilioEntregaVenta
add constraint FK_IDUSUARIOCREACION
foreign key (idUsuarioCreacion) references Usuario;

alter table DomicilioEntregaVenta
add constraint FK_IDUSUARIOACTUALIZACION
foreign key (idUsuarioActualizacion) references Usuario;



--FK SECCIONLIBRO
alter table SeccionLibro
add constraint FK_IDUSUARIOCREACION
foreign key (idUsuarioCreacion) references Usuario;

alter table SeccionLibro
add constraint FK_IDUSUARIOACTUALIZACION
foreign key (idUsuarioActualizacion) references Usuario;



--FK IDIOMA
alter table Idioma
add constraint FK_IDUSUARIOCREACION
foreign key (idUsuarioCreacion) references Usuario;

alter table Idioma
add constraint FK_IDUSUARIOACTUALIZACION
foreign key (idUsuarioActualizacion) references Usuario;



--FK AUTOR
alter table Autor
add constraint FK_IDMUNICIPIO
foreign key (idMunicipio) references Municipio;

alter table Autor
add constraint FK_IDUSUARIOCREACION
foreign key (idUsuarioCreacion) references Usuario;

alter table Autor
add constraint FK_IDUSUARIOACTUALIZACION
foreign key (idUsuarioActualizacion) references Usuario;



--FK CLIENTE
alter table Cliente
add constraint FK_IDMUNICIPIO
foreign key (idMunicipio) references Municipio;

alter table Cliente
add constraint FK_IDPREGUNTASECRETA
foreign key (idPreguntaSecreta) references PreguntaSecreta;


--FK CUENTABANCARIA
alter table CuentaBancaria
add constraint FK_IDBANCO
foreign key (idBanco) references Banco;



--FK LIBRO
alter table Libro
add constraint FK_IDSECCIONLIBRO
foreign key (idSeccionLibro) references SeccionLibro;

alter table Libro
add constraint FK_IDFORMATOLIBRO
foreign key (idFormatoLibro) references FormatoLibro;

alter table Libro
add constraint FK_IDIDIOMA
foreign key (idIdioma) references Idioma;

alter table Libro
add constraint FK_IDEDITORIA
foreign key (idEditorial) references Editorial;

alter table Libro
add constraint FK_IDUSUARIOCREACION
foreign key (idUsuarioCreacion) references Usuario;

alter table Libro
add constraint FK_IDUSUARIOACTUALIZACION
foreign key (idUsuarioActualizacion) references Usuario;


--FK VENTA
alter table Venta
add constraint FK_IDCLIENTE
foreign key (idCliente) references Cliente;

alter table Venta
add constraint FK_IDCUENTABANCARIA
foreign key (idCuentaBancaria) references CuentaBancaria;

alter table Venta
add constraint FK_IDDOMICILIOENTREGA
foreign key (idDomicilioEntregaVenta) references DomicilioEntregaVenta;

alter table Venta
add constraint FK_IDSUCURSAL
foreign key (idSucursal) references Sucursal;


--FK SUCURSALLIBRO
alter table SucursalLibro
add constraint FK_IDSUCURSAL
foreign key (idSucursal) references Sucursal;

alter table SucursalLibro
add constraint FK_IDLIBRO
foreign key (idLibro) references Libro;


--FK AUTORLIBRO
alter table AutorLibro
add constraint FK_IDAUTOR
foreign key (idAutor) references Autor;

alter table AutorLibro
add constraint FK_IDLIBRO
foreign key (idLibro) references Libro;


--FK DETALLEVENTA
alter table DetalleVenta
add constraint FK_IDVENTA
foreign key (idVenta) references Venta;

alter table DetalleVenta
add constraint FK_IDLIBRO
foreign key (idLibro) references Libro;
