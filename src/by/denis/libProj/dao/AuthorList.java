package by.denis.libproj.dao;

/**
 * Created by Denis on 21.03.2016.
 */

import by.denis.libproj.model.Author;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AuthorList {
    private ConnectionPool cp;

    public AuthorList() throws Exception {
        cp = ConnectionPool.getInstance();
    }
    private ArrayList<Author> authorList = new ArrayList<Author>();

    private ArrayList<Author> getAuthors() throws Exception {
        Statement stmt = null;
        ResultSet rs = null;
        Connection conn = null;
        try {
            conn = cp.getConnection();

            stmt = conn.createStatement();
            rs = stmt.executeQuery("select * from author order by fio");
            while (rs.next()) {
                Author author = new Author();
                author.setId(rs.getInt("id"));
                author.setName(rs.getString("fio"));
                author.setBirthday(rs.getDate("birthday"));
                authorList.add(author);
            }

        } catch (SQLException ex) {
            Logger.getLogger(AuthorList.class.getName()).log(Level.SEVERE, null, ex);
        } finally {
            try {
                if (stmt!=null) stmt.close();
                if (rs!=null)rs.close();
                if (conn!=null)conn.close();
            } catch (SQLException ex) {
                Logger.getLogger(AuthorList.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

        return authorList;
    }

    public ArrayList<Author> getAuthorList() throws Exception {
        if (!authorList.isEmpty()) {
            return authorList;
        } else {
            return getAuthors();
        }
    }
}
