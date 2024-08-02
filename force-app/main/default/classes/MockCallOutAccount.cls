global  class MockCallOutAccount implements HttpCalloutMock{
    public HTTPResponse respond(HTTPRequest req) {
        HTTPResponse response= new HTTPResponse();
        response.setBody('{"succes":true}');
        response.setStatus('ok');
        response.setStatusCode(200);
       return response;
    }

}