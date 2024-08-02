/*
Name: AccountResourceService Class
Purpose:Response for Accouct Action for LWC Component
*/

public with sharing class AccountResourceService {
    @AuraEnabled
    public static ResponseWrappper getResponse(){
            HttpRequest req = new HttpRequest();
            req.setEndpoint('callout:beyonexxAcountResource');
            req.setMethod('GET');
            Http http = new Http();
            try{
                 HTTPResponse res = http.send(req);
                 ResponseWrappper rw =new ResponseWrappper(res.getStatusCode(),res.getStatus());
                 return rw; 
                }
            catch(Exception e)
            {
                throw new AuraHandledException('Something Went Wrong'); 
              
            }               
    }

}