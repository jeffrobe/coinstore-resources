<#--
 * formSingleSelect
 *
 * Show a selectbox (dropdown) input element allowing a single value to be chosen
 * from a list of options.
 *
 * @param path the name of the field to bind to
 * @param options a map (value=label) or a list of all the available options
 * @param attributes any additional attributes for the element (such as class
 *    or CSS styles or size
-->
<#macro formSingleSelectLongId path options attributes="">
	<#assign status = springMacroRequestContext.getBindStatus(path)>
	<#assign stringStatusValue=status.value?0>

   <select id="${status.expression}" name="${status.expression}" ${attributes}>
    <#list options as o>
    	<#assign value=1>
       <option value="${value}"
      <@checkSelectedNum value="value" />
      >${o.value} </option>
    </#list> 
    
             
    </select>
</#macro>



<#--
 * checkSelectedNum
 *
 * Check a value in a list to see if it is the currently selected value.
 * If so, add the 'selected="selected"' text to the output.
 * Handles values of numeric and string types.
 * This function is used internally but can be accessed by user code if required.
 *
 * @param value the current value in a list iteration
-->
<#macro checkSelectedNum1 value>
	
</#macro>

