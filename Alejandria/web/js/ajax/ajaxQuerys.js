/**
 * Created with IntelliJ IDEA.
 * User: Juan
 * Date: 2/11/12
 * Time: 10:58 PM
 * To change this template use File | Settings | File Templates.
 */

var AJAX_CONTEXT = "/alejandria/ajax/";
var URL_PAGE_SUFFIX = ".htm";

function loadStatesFromCountry(idSelect, idCountry, properties) {
    $.ajax({
	type: "GET",
	url: [AJAX_CONTEXT, "loadStatesFromCountry", URL_PAGE_SUFFIX].join(""),
	async: true,
	data: {"idPais": idCountry},
	dataType: "json",
	success: function(data) {
	    Util.loadSelectWithAjax(idSelect, idCountry, data, properties);
	}, 
	error: function(e) {
	    json = jQuery.parseJSON(['"error": ', '"', e, '"' ].join(""));
	    console.error(json);
	}
    });
}

function loadCitiesFromState(idSelect, idState, properties) {
    $.ajax({
	type: "GET",
	url: [AJAX_CONTEXT, "loadCitiesFromState", URL_PAGE_SUFFIX].join(""),
	async: true,
	data: {"idState": idState},
	dataType: "json",
	success: function(data) {
	    Util.loadSelectWithAjax(idSelect, idState, data, properties);
	}, 
	error: function(e) {
	    json = jQuery.parseJSON(['"error": ', '"', e, '"' ].join(""));
	    console.error(json);
	}
    });
}