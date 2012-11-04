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

function loadSelectWithSource(id, param, data){
    var html = '<option value="-1">Seleccione..</option>';
    if(param != null && parseInt(param, 10) > 0){
        var src = data(param);
        for(var i = 0; i < src.options.length; i++){
            html += '<option value="' + src.options[i].key + '">' + src.options[i].value + '</option>';
        }
    }
    $('#' + id).html(html);
}

function loadInit(){
   $('#cmbPais').change(function(){
       loadSelectWithSource('cmbEstado', $('#cmbPais').val(), loadStatesFromCountry);
   });

    $('#cmbEstado').change(function(){
        loadSelectWithSource('cmbMunicipio', $('#cmbEstado').val(), loadCitiesFromState);
    });
}

