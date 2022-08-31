import { LightningElement } from 'lwc';

export default class CallingFunctionOnEvents extends LightningElement {

    greeting='hello ward';
    
    handalChange(event){
        this.greeting =event.target.value;
    }
}