import { LightningElement,wire,api } from 'lwc';
import { NavigationMixin } from 'lightning/navigation';
export default class NavigationClass extends NavigationMixin(LightningElement) {
    @api recordId;
    handleButtonClick() {
        this[NavigationMixin.Navigate]({
            type: 'standard__recordRelationshipPage',
            attributes: {
                recordId: this.recordId,
                objectApiName: 'Account',
                relationshipApiName: 'Contacts',
                actionName: 'view'
            }
        });
    }
}