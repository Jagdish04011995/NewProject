import { LightningElement,wire } from 'lwc';
import jdahake from '@salesforce/apex/Claspractis.jdahake';
export default class Claspractis extends LightningElement {
    NumberOfEmploys=null;
    jagdish(event){
        this.NumberOfEmploys=event.detail.value;
    }
    reset(){
     this.NumberOfEmploys=null;
    }

    @wire(jdahake, { NumberOfEmploys:'$NumberOfEmploys'})
    accounts;

}