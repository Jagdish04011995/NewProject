import { api, LightningElement } from 'lwc';

export default class LighningPannerLWCSimpleExample extends LightningElement {
    @api isloaded =false;
    handleClick(){
        this.isloaded=!this.is.isloaded;
    }
}