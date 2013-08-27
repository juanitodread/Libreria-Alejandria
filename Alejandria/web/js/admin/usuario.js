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
}

