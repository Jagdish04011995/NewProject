import { LightningElement,wire } from 'lwc';
import queryAccountByEmployNumber from '@salesforce/apex/jd.queryAccountByEmployNumber';
export default class jd extends LightningElement {
    NumberOfEmploys=null;
    HandleChange(event){
        this.NumberOfEmploys=event.detail.value;
    }
    reset(){
        this.NumberOfEmploys=null;

    }
    @wire(queryAccountByEmployNumber, { NumberOfEmploys:'$NumberOfEmploys'})
    accounts;
    }