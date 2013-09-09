/**
 * Created by IntelliJ IDEA.
 * User: marce
 * Date: 4/20/12
 * Time: 11:16 PM
 * To change this template use File | Settings | File Templates.
 */

$(function () {
    $("#submitUser").button({
        icons:{
            primary:"ui-icon-check"
        }
    });

    loadInit();
});

function loadInit(){
   $('#cmbCountry').change(function() {
       loadStatesFromCountry('cmbState', $('#cmbCountry').val(), {key: "id", value: "estado"});
   });

    $('#cmbState').change(function(){
	loadCitiesFromState('cmbTown', $('#cmbState').val(), {key: "id", value: "municipio"});
    });
    
    //load user's grid
    $('#userGrid').jqGrid({
	autowidth: true,
	url: '/alejandria/ajax/getAllUsers.htm',
	datatype: 'json',
	mtype: 'GET',
	colNames: ['First Name', 'Last Name', 'Maiden Name', 'Email', 'Username'],
	colModel: [{name: 'nombre', width: '20%'}, 
	           {name: 'aPaterno', width: '20%'},
	           {name: 'aMaterno', width: '20%'},
	           {name: 'email', width: '20%'},
	           {name: 'user', width: '20%'}],
	pager: '#pager',
	rowNum: 10,
	rowList: [10, 20, 30],
	sortname: '',
	sortorder: 'desc',
	viewrecords: true,
	gridview: true,
	autoenconde: true
    });
    
    $('#userForm').validate({
	rules: {
	    txtName: {
		required: true,
		maxlength: 100
	    },
	    txtFirstNameP: {
		required: true,
		maxlength: 100
	    },
	    txtFirstNameM: {
		required: false, 
		maxlength: 100
	    },
	    txtEmail: {
		required: true, 
		email: true
	    },
	    txtUsername: {
		required: true,
		maxlength: 50
	    },
	    txtPassword: {
		required: true,
		maxlength: 50
	    },
	    cmbSecretQuestion: {
		rquiredcmb: true
	    },
	    txtSecretAnswer: {
		required: true,
		maxlength: 100
	    },
	    cmbCountry: {
		rquiredcmb: true
	    },
	    cmbState: {
		rquiredcmb: true
	    },
	    cmbTown: {
		rquiredcmb: true
	    }
	}
    });
    
    jQuery.validator.addMethod("rquiredcmb", function(value){
	return (value > 0);
    }, "This field is required.");
}

