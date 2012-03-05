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