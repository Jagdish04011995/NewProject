import { LightningElement,wire } from 'lwc';
import Methods from '@salesforce/apex/AccountSurch2Class.Methods';
export default class AccountScurch2Practice extends LightningElement {

    Variablesss=null;

    HandleChange(event){
        this.Variablesss=event.detail.value;
    }

    Resets(){
        this.Variablesss=null;
    }

    @wire (Methods, { Variablesss : '$Variablesss'} )
    Accounts;

    
}