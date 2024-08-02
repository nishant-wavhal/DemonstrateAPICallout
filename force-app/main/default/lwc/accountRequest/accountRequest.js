import { LightningElement,wire,api,track } from 'lwc';
import getAccountResponse from '@salesforce/apex/AccountResourceService.getResponse';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

export default class AccountRequest extends LightningElement {

    @track reswrapper=null;
    @track error;

    handleAction() {
        getAccountResponse().then(result => {
            try{
                 this.reswrapper=result;
                
            }catch( e)
            {     
           console.error('Error',e);
            }
        
      
        })
        .catch(error => {
            this.error = error;
            console.log('Error',this.error);
            this.dispatchEvent(
                new ShowToastEvent({
                    title: "Error",
                    message:this.error.body.message,
                    variant: "Error",
                }),
            );
            
        });
    }
}