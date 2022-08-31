@IsTest
public class TestRunAsProfile {
        @IsTest Public Static Void Method(){
        Profile j=[Select ID From Profile Where Name='brand new profile'];
        User d =new User(Alias='Jdaha',Email='Sonudahake95555@gmail.com',EmailEncodingKey='UTF-8',LastName='kshcbd',
                        LanguageLocaleKey='en_US',LocaleSidKey='en_US',ProfileId=j.ID,
                        TimeZoneSidKey='America/Los_Angeles',UserName='Sonudahake95555@gmail.com');
              insert d;
        
        System.assertEquals('Jdaha', d.Alias);
        {
            System.debug('Debug11'+Userinfo.getUserId());
              System.debug('Debug22'+Userinfo.getProfileId());
        }
    }
}