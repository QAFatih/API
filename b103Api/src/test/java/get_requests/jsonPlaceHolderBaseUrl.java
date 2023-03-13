package get_requests;

import io.restassured.builder.RequestSpecBuilder;
import io.restassured.http.ContentType;
import io.restassured.specification.RequestSpecification;
import org.junit.Before;

public class jsonPlaceHolderBaseUrl {
    protected RequestSpecification spec;

    @Before//Her test metodundan önce calısır.
    public void setUp(){

        spec = new RequestSpecBuilder().setAccept(ContentType.JSON).setBaseUri("https://jsonplaceholder.typicode.com/todos").build();


    }
}
