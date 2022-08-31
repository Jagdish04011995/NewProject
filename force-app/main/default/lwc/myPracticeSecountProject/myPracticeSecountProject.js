import { LightningElement } from 'lwc';

export default class MyPracticeSecountProject extends LightningElement {

    NoOfEmply=null;

    HandleChane(event){
       this.NoOfEmply=event.detail.value;
    }

    Reset(){
        this.NoOfEmply=null;
    }
}