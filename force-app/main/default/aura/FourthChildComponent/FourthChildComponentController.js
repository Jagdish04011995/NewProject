({
	doAction : function(component, event, helper) {
	var params = event.getParam('arguments');
        if (params){
         var param1 = params.param11;
         var param2 = params.param22; 
         var param3 = params.param33; 
             alert(param1);
             alert(param2);
             alert(param3);
         
            
            var insight = component.get("v.passingparam");
            alert("got the insight: "+ insight);
        }
	}
})