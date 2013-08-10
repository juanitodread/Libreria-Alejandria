--------------------------------------INSERTS INICIALES----------------------------------------
--Este insert es necesario aqui
insert into Usuario(nombre, aPaterno, aMaterno, email, usuario, pass, respuestaSecreta, idMunicipio, idPreguntaSecreta, idUsuarioCreacion, idUsuarioActualizacion)
values('alejandría', 'alejandría', 'alejandría', 'alejandría@gmail.com', 'masteradmin', md5('masteradmin@alejandría'), md5('admin'), 1, 1, 1, 1);

insert into pais (pais,codigo,idusuariocreacion,idusuarioactualizacion)
values('México','MX',1,1);

insert into estado (estado,codigo,idpais,idusuariocreacion,idusuarioactualizacion)
values('Nayarit','NY',1,1,1);

insert into municipio (municipio,codigo,idestado,idusuariocreacion,idusuarioactualizacion)
values('Tepic','TP',1,1,1);

insert into preguntasecreta (preguntasecreta,idusuariocreacion,idusuarioactualizacion)
values('¿Dónde Estudié?',1,1);