public class DeleteRestricHelper {
    Public Static Void Method(List<Account>Names){
        For(Account jd:[Select id From Account WHERE id IN (Select AccountId from Contact) AND id IN :Names])
        {
            trigger.oldmap.get(jd.id).addError('Trigger laga Hai delete Nahi kar sakta q ki Coantact Link hai');
        }
    }

}