({
    Jagdish : function(component, event, helper) {
      var action= component.get("c.getcontactList");
        action.setParams({
            
        });
        action.setCallback(this,function(response){
            var state=response.getState();
            if(state ==='SUCCESS'){
                var ContactList= response.getReturnValue();
               console.log(ContactList);
                component.set("v.ContactList",ContactList);
            }
            else{
                alert('error in getting ');
            }
        });
           $A.enqueueAction(action);    
            }
        })