import { LightningElement,wire,track,api } from 'lwc';
import Method from '@salesforce/apex/Classss.Method';
export default class Classss extends LightningElement {
@api recordId;
@track columns =[{label: 'Name', fieldName:'Name',type:'text',sortable: true},
{label: 'Age', fieldName:'Age__c',type:'Number',sortable: true},
{label: 'Supervisor', fieldName:'Supervisor__c',type:'text',sortable: true},
{label: 'Location', fieldName:'Location__c',type:'text',sortable: true},
{label: 'Birthdate', fieldName:'Birthdate__c',type:'date',sortable: true}];
@wire (Method,{jdId:'$recordId'}) 
Bears;
}