/**
 * Created with IntelliJ IDEA.
 * User: Juan
 * Date: 2/11/12
 * Time: 10:58 PM
 * To change this template use File | Settings | File Templates.
 */

function loadStatesFromCountry(idCountry){
    var resp;
    $.ajax({
        type: "GET",
        url: "/alejandria/ajaxQueryLoadStatesFromCountry.run",
        async: false,
        data: "idPais=" + idCountry,
        success: function(response){
             resp = jQuery.parseJSON(response);
        },
        error: function(e){
           resp = jQuery.parseJSON('"error" : "' + e + '"');
        }
    });
    return resp;
}

function loadCitiesFromState(idState){
    var resp;
    $.ajax({
        type: "GET",
        url: "/alejandria/ajaxQueryLoadSCitiesFromState.run",
        async: false,
        data: "idState=" + idState,
        success: function(response){
            resp = jQuery.parseJSON(response);
        },
        error: function(e){
            resp = jQuery.parseJSON('"error" : "' + e + '"');
        }
    });
    return resp;
}