trigger updateSerialNoOnOppoLineItem on OpportunityLineItem(before insert){
Set<Id> oppId = new Set<Id>();
for(OpportunityLineItem oppProd:Trigger.new){
oppId.add(oppProd.OpportunityId);
}
List<OpportunityLineItem> oppProdListTOUpdate = new List<OpportunityLineItem>();

Map<Id,String> oppIdSerialNoMap =new Map<Id,String>();
List<OpportunityLineItem> oppProdList=[Select Id,Serial_No__c,OpportunityId from OpportunityLineItem where OpportunityId=:oppId];
if(oppProdList.size()>0){
for(OpportunityLineItem oppoPrd:oppProdList){
if(oppoPrd.Serial_No__c!=null){

String lastword = oppoPrd.Serial_No__c.right(1);

Integer num = Integer.valueOf(lastword);
num++;

oppoPrd.Serial_No__c=oppoPrd.Serial_No__c+','+(num);
oppProdListTOUpdate.add(oppoPrd);

oppIdSerialNoMap.put(oppoPrd.OpportunityId,oppoPrd.Serial_No__c);
}
else{

oppoPrd.Serial_No__c='1';
oppProdListTOUpdate.add(oppoPrd);
}
}
}
if(oppProdListTOUpdate.size()>0){
update oppProdListTOUpdate;
}
for(OpportunityLineItem oppProd:Trigger.new){

if(oppIdSerialNoMap.containsKey(oppProd.OpportunityId)){
oppProd.Serial_No__c = oppIdSerialNoMap.get(oppProd.OpportunityId);
}
else{
oppProd.Serial_No__c='1';
}
}
}