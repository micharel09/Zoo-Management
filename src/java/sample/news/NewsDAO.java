/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.news;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import sample.utils.DBUtils;

/**
 *
 * @author dinhg
 */
public class NewsDAO {
        //PRINT
    public List<NewsDTO> getListNews() throws SQLException {
    List<NewsDTO> listNews = new ArrayList<>();
    Connection conn = null;
    PreparedStatement ptm = null;
    ResultSet rs = null;
    
    try {
        conn = DBUtils.getConnection();
        if (conn != null) {
            ptm = conn.prepareStatement("SELECT News_ID, Title, Content, Day, Photo FROM News");
            rs = ptm.executeQuery();
            
            while (rs.next()) {
                String news_id = rs.getString("News_ID");
                String title = rs.getString("Title");
                String content = rs.getString("Content");
                String day = rs.getString("Day");
                String photo = rs.getString("Photo");
                
                listNews.add(new NewsDTO(news_id, title, content, day, photo));
            }
        }
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (rs != null) {
            rs.close();
        }
        if (ptm != null) {
            ptm.close();
        }
        if (conn != null) {
            conn.close();
        }
    }
    
    return listNews;
}
}
