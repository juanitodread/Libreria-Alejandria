/**
 * Created by IntelliJ IDEA.
 * User: marce
 * Date: 4/20/12
 * Time: 11:16 PM
 * To change this template use File | Settings | File Templates.
 */

$(function () {
    $("#submitUsuario").button({
        icons:{
            primary:"ui-icon-check"
        }
    });

    loadInit();
});

function loadInit(){
   $('#cmbPais').change(function() {
       loadStatesFromCountry('cmbEstado', $('#cmbPais').val(), {key: "id", value: "estado"});
   });

    $('#cmbEstado').change(function(){
	loadCitiesFromState('cmbMunicipio', $('#cmbEstado').val(), {key: "id", value: "municipio"});
    });
    
    //load user's grid
    $('#userGrid').jqGrid({
	autowidth: true,
	url: '/alejandria/ajax/getAllUsers.htm',
	datatype: 'json',
	mtype: 'GET',
	colNames: ['Usuario', 'Apellido Paterno', 'Apellido Materno', 'Email', 'Username'],
	colModel: [{name: 'nombre', width: '20%'}, 
	           {name: 'aPaterno', width: '20%'},
	           {name: 'aMaterno', width: '20%'},
	           {name: 'email', width: '20%'},
	           {name: 'municipio.estado.pais.pais', width: '20%'}],
	pager: '#pager',
	rowNum: 10,
	rowList: [10, 20, 30],
	sortname: '',
	sortorder: 'desc',
	viewrecords: true,
	gridview: true,
	autoenconde: true
    });
}

