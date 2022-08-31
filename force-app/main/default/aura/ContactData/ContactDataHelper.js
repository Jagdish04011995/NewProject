({
	fetchdata : function(component, event, helper) {
  var action= component.get("c.getcontactList");
        action.setParams({
            
        });
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state==='SUCCESS'){
                var contactList = response.getReturnValue();
                console.log(contactList);
                componunt.set("v.contactList",contactList);
                
            }
            else{
                alert("Error in getting data");
                
            }
        });
        $A.enqueueAction(action);
        
	}
})