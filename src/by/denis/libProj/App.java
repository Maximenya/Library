package by.denis.libproj;

import static spark.Spark.*;

public class App {

    public static void main(String[] args) throws Exception {
        System.out.println("start");
       System.setProperty("file.encoding","UTF-8");

        port(8080);
        System.out.println("lol");

        get("/hello", (req, res) -> "Hello World");
    }

}
