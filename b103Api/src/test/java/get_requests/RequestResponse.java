package get_requests;
import io.restassured.response.Response;

import static io.restassured.RestAssured.*;

public class RequestResponse {
/*

1)Postman manuel API testi için kullanilir.
2) API otomasyonu için Rest-Assured Library
3)Otomasyon kodlarının yazımı için şu adımlar kullanılır.
    a)Gereksinimleri anlama
    b)TestCase'i yazma
        -TestCase'i yazmak için gherkin lanquage kullanıyoruz.
        x)Given:Ön kosullar-->EndPoint, Body
        y)When kısminde işlemler --> Get, Put, Delete, ...
        z)Then: Dönütler -->Assertler
        t)And: Çoklu işlemlerin art arda yazılacagı yerlerde kullanılır.
    c) Test kodunu yazarken şu adimlari izleriz.
        -i) Set the Url
        ii) Set the expected data
        iii)Send the request and  get the response
        iiii) Do assertion

 */


    public static  void main(String[] args) {
   //Get request nasıl yapılır;
        String url="https://restful-booker.herokuapp.com/booking/55";
  Response response= given().when().get(url);
   response.prettyPrint(); //methodu responseyi Json formatında yazdırır
        //Status code yazdırma
        System.out.println("Status Cod: " + response.statusCode());
        //Contebt type nasıl yazdırılır
        System.out.println("Content type :" + response.contentType());
        // Status Line nasıl yazdırlır

        System.out.println("Status Line :" + response.statusLine());

        //Header nasıl yazdırılır
        System.out.println(response.header("Connection"));
        System.out.println(response.header("Server"));
        //Headers nasıl yazdırılır
        System.out.println(response.headers());

       //Time nasil alınır
        System.out.println("Time :" + response.getTime());


    }


}
