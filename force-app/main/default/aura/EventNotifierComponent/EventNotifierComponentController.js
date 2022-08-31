({
	FireComponentEvent : function(component, event, helper) {
		var cmpEvent  = component.getEvent("cmpEvent");
        cmpEvent.setParams({
            "message" : "This Message on Notifier Componunt JS Pass to Event" });
        cmpEvent.fire();
	}
})