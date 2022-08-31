import { LightningElement,api } from 'lwc';

export default class RecordEditFormEditExampleLWC extends LightningElement {
    @api recordId;
    jagdish(event){
        console.log('onsubmit event record sumbmit form'+event.detail.fields);
    }
    dahake(event){
        console.log('onsuccess event record sumbmit form'+event.detail.id);
    }
}