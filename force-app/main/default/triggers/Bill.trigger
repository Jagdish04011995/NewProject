trigger Bill on Account (before update) {
    for(Account Acc:trigger.new){
       Acc.BillingPostalCode=Acc.ShippingPostalCode;
    }
}