/*
Name: AccountResourceServiceTest Class
Purpose:Cover AccountResourceService Class
*/


@isTest
public class AccountResourceServiceTest {
    @isTest
    public static void testAccountService()
    {
        Test.setMock(HttpCalloutMock.class, new MockCallOutAccount());
        ResponseWrappper rwresponse=AccountResourceService.getResponse();
        ResponseWrappper rw =new ResponseWrappper(200,'ok');
        System.assertEquals(200, rwresponse.statuscode);
        System.assertEquals('ok', rwresponse.status);
    }
}