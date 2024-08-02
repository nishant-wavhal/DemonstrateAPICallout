/*
Name: ResponseWrappper Class
Purpose:Wrappper to provide user defined type
*/

public class ResponseWrappper {

    @AuraEnabled
       public Integer statuscode;
       @AuraEnabled
       public String status;

    public ResponseWrappper(Integer statuscode,String status) {
        this.statuscode=statuscode;
        this.status=status;
    }
}