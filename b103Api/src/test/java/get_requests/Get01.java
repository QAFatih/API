package get_requests;

import static io.restassured.RestAssured.*;
import io.restassured.response.Response;
import org.junit.Test;

public class Get01 {
/*
    Given
    https://restful-booker.herokuapp.com/booking/55
    When
    User sends a GET Request to the url
    Then
    HTTP Status Code should be 200
    And
    Content Type should be JSON
            And
    Status Line should be HTTP/1.1 200 OK
          */

@Test
    public void get01(){

     // -i) Set the Url
    String url= "https://restful-booker.herokuapp.com/booking/55";

       // ii) Set the expected data


       // iii)Send the request and  get the response
      Response response=given().when().get(url);
      response.prettyPrint();

       // iiii) Do assertion
    //System.out.println(
            response.
            then().statusCode(200).// HTTP Status Code should be 200
            //Content Type should be JSON
            contentType("application/json").
           //Status Line should be HTTP/1.1 200 OK
            statusLine("HTTP/1.1 200 OK");


}

}
