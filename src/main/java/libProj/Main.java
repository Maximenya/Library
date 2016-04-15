package main.java.libProj;
import static spark.Spark.*;

public class Main {

    public static void main(String[] args) throws Exception {
        System.setProperty("file.encoding","UTF-8");

        port(8080);
        System.out.println("lol");

        get("/hello", (req, res) -> "Hello World");
    }

}
