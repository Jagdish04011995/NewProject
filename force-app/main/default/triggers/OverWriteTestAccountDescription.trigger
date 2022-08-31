trigger OverWriteTestAccountDescription on Account (before insert) {
    for(Account a:Trigger.new){
        if(a.Name.contains('Jagdish123')){
            system.debug('Test Debug');
            a.Description='Description ok.';
        }
    }
}