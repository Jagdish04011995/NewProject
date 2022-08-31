({
	FireComponentEvent : function(component, event, helper) {
        var appEvent  = $A.get("e.c:ApplicationEvent");
        appEvent.setParams({
            "message" : "This Message on Notifier Componunt JS Pass to Event" });
        appEvent.fire();
	}
})