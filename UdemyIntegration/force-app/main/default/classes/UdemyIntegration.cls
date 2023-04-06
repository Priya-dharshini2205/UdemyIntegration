public class UdemyIntegration {
    @AuraEnabled
    public static String getUdemyCourses(String course){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint('https://www.udemy.com/api-2.0/courses/?search='+course);
        request.setMethod('GET');
        request.setHeader('Accept', 'application/json, text/plain, */*');
        request.setHeader('Authorization', 'Basic Vzc1aWdINTNLRERoWDhZcHlxR0ZFSFlmV0JUQko1dThKRzFLU1BMRDpxdnFXazg0VjZGMGNmYTRGNEk0c1FGeDg3TnRvQkxnWFVjQWNLZmxtSWJnRTNJeVRhZDFoM2g3UU5YNEhxeVE3RXVoRmJxUWt6TWlEako3RU1QbEsxRG93anUzUWxDM3pXSlQzSE1yREFUa1VONTRFVkVDWDF3R0dWRzh4eGxUbA==');
        request.setHeader('Content-Type', 'application/json;charset=utf-8');
        HttpResponse response = http.send(request);
        System.debug(response.getBody());
        if(response.getStatusCode() == 200) {
            System.debug(response.getBody());
             return response.getBody();
        }
        else
            return response.getStatusCode()+'';
    }



    @AuraEnabled
    public static String getNextUdemyCourses(String url){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(url);
        request.setMethod('GET');
        request.setHeader('Accept', 'application/json, text/plain, */*');
        request.setHeader('Authorization', 'Basic Vzc1aWdINTNLRERoWDhZcHlxR0ZFSFlmV0JUQko1dThKRzFLU1BMRDpxdnFXazg0VjZGMGNmYTRGNEk0c1FGeDg3TnRvQkxnWFVjQWNLZmxtSWJnRTNJeVRhZDFoM2g3UU5YNEhxeVE3RXVoRmJxUWt6TWlEako3RU1QbEsxRG93anUzUWxDM3pXSlQzSE1yREFUa1VONTRFVkVDWDF3R0dWRzh4eGxUbA==');
        request.setHeader('Content-Type', 'application/json;charset=utf-8');
        HttpResponse response = http.send(request);
        System.debug(response.getBody());
        if(response.getStatusCode() == 200) {
            System.debug(response.getBody());
             return response.getBody();
        }
        else
            return response.getStatusCode()+'';
    }


    @AuraEnabled
    public static String getPreviousUdemyCourses(String url){
        Http http = new Http();
        HttpRequest request = new HttpRequest();
        request.setEndpoint(url);
        request.setMethod('GET');
        request.setHeader('Accept', 'application/json, text/plain, */*');
        request.setHeader('Authorization', 'Basic Vzc1aWdINTNLRERoWDhZcHlxR0ZFSFlmV0JUQko1dThKRzFLU1BMRDpxdnFXazg0VjZGMGNmYTRGNEk0c1FGeDg3TnRvQkxnWFVjQWNLZmxtSWJnRTNJeVRhZDFoM2g3UU5YNEhxeVE3RXVoRmJxUWt6TWlEako3RU1QbEsxRG93anUzUWxDM3pXSlQzSE1yREFUa1VONTRFVkVDWDF3R0dWRzh4eGxUbA==');
        request.setHeader('Content-Type', 'application/json;charset=utf-8');
        HttpResponse response = http.send(request);
        System.debug(response.getBody());
        if(response.getStatusCode() == 200) {
            System.debug(response.getBody());
             return response.getBody();
        }
        else
            return response.getStatusCode()+'';
    }
    
}