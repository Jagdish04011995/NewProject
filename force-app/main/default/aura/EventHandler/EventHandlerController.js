({
	handlecomponuntevent : function(component, event, helper) {
	var message=event.getParam("message");
        component.set("v.MessageFromEvent",message);
        var numofeventhandle =parseInt(component.get("v.numEvent"))+1;
        component.set("v.numEvent",numofeventhandle);
	}
})