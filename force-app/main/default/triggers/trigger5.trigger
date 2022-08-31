trigger trigger5 on Account (before insert) {
    For(Account Acc:trigger.new){
        Acc.Description=Acc.Phone;
    }
}