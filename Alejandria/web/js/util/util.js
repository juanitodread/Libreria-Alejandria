/**
 * Librería Alejandría
 * 
 * Copyright 2013 juanitodread
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * 
 */


/**
*
* Utility class
* 
* @author juanitodread
* @version 1.0
* Aug 26, 2013
*/

function Util() {}

/**
 * This function permits load a <select> element with a data. This select must
 * have a father, this is a master-detail relation.
 * 
 * idSelect:      Is the id property of <select> tag.
 * selectedKey:   Is the selected key of the master.
 * data: 	  Is the data which will be used to load select. It must be in 
 * 		  json format.
 * properties:    {key: "", value: ""} this object will be used to get the properties
 *                of the "data"; <option value="properties.key">properties.value</option>
 * 
 */
Util.loadSelectWithAjax = function(idSelect, selectedKey, data, properties) {
    var defaultText  = "Seleccione..";
    var defaultValue = -1;
    var select = document.getElementById(idSelect);
    
    if(selectedKey <= 0) {
	select.options.length = 0;
	select.options.add(new Option(defaultText, defaultValue));
	if ("createEvent" in document) {
	    var evt = document.createEvent("HTMLEvents");
	    evt.initEvent("change", false, true);
	    select.dispatchEvent(evt);
	} else {
	    select.fireEvent("onchange");
	}
	return;
    }
    
    //clear previous values.
    select.options.length = 0;
    
    //add default key-value
    select.options.add(new Option(defaultText, defaultValue));
    
    //add all the values
    var element = null;
    for(var i = 0; i < data.length; i++) {
	element = data[i];
	select.options.add(new Option(element[properties.value], element[properties.key]));
    }
}