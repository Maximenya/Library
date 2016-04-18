package by.denis.libproj;

import by.denis.libproj.dao.BookList;
import by.denis.libproj.enums.SearchType;
import by.denis.libproj.model.Book;
import by.denis.libproj.model.LetterList;
import spark.ModelAndView;
import spark.template.freemarker.FreeMarkerEngine;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import static spark.Spark.*;


public class App {

    public static void main(String[] args) throws Exception {
        System.out.println("start");
       System.setProperty("file.encoding","UTF-8");
        staticFileLocation("/public");
        port(8080);
        System.out.println("lol");

        get("/hello", (req, res) -> "Hello World");

        get("/main", (request, response) -> {
            LetterList letterList = new LetterList();
            char[] letters = letterList.getRussianLetters();
            response.status(200);
            response.type("text/html");
        Map<String, Object> attributes = new HashMap<>();
            attributes.put("letters", letters);
        return new ModelAndView(attributes, "main.ftl");
    }, new FreeMarkerEngine());

        get("/books", (request, response) -> {
            LetterList letterList = new LetterList();
            char[] letters = letterList.getRussianLetters();
            ArrayList<Book> list = null;
            BookList bookList = new BookList();
            if (request.queryParams("genre_id") != null) {
                int genreId = Integer.valueOf(request.queryParams("genre_id"));
                list = bookList.getBooksByGenre(genreId);
            } else if (request.queryParams("letter") != null) {
                String letter = request.queryParams("letter");
                list = bookList.getBooksByLetter(letter);
            } else if (request.queryParams("search_string") != null) {
                String searchStr = request.queryParams("search_string");
                SearchType type = SearchType.TITLE;
                if (request.queryParams("search_option").equals("Автор")) {
                    type = SearchType.AUTHOR;
                }

                if (searchStr != null && !searchStr.trim().equals("")) {
                    list = bookList.getBooksBySearch(searchStr, type);
                }
            }else{
                list = bookList.getAllBooks();
            }
            response.status(200);
            response.type("text/html");
            Map<String, Object> attributes = new HashMap<>();
            attributes.put("letters", letters);
            attributes.put("books", list);
            return new ModelAndView(attributes, "main.ftl");
        }, new FreeMarkerEngine());

    }

}
