import { LightningElement,api } from 'lwc';
import jagdish1 from '@salesforce/schema/Account.Name';
import jagdish2 from '@salesforce/schema/Account.AnnualRevenue';
import jagdish3 from '@salesforce/schema/Account.Industry';
export default class LightningRecordFromEditLWC extends LightningElement {
    @api recordId;
    @api objectApiName;
    fields=[jagdish1,jagdish2,jagdish3];
   
}