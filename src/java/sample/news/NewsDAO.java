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
      Connection conn = null;
    PreparedStatement ptm = null;
    ResultSet rs = null;
    
    public List<NewsDTO> getListNews()  {
    List<NewsDTO> listNews = new ArrayList<>();
  
    try {
        conn = DBUtils.getConnection();
        if (conn != null) {
            ptm = conn.prepareStatement("SELECT News_ID, Title, Content, Day, Photo from News order by News_ID desc ");
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
    
    }
    
    return listNews;
}
    
    
    public void createNews(String new_id, String title,String day, String content, String photo) {
        String sql = " insert into News(News_ID, Title, Content, Day, Photo)\n"
                + " values(?,?,?,?,?)";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, new_id);
            ptm.setString(2, title);
            ptm.setString(3, content);
            ptm.setString(4, day);
            ptm.setString(5, photo);
            ptm.executeUpdate();

        } catch (Exception e) {
        }
    }
    
        public String getNewIdNewsID() {
        String sql = "select top 1 News_ID from News order by [News_ID] desc";
        String IdOrder = null;
        String newIdOrder = null;
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);

            rs = ptm.executeQuery();

            if (rs.next()) {
                IdOrder = rs.getString("News_ID");
            }
            if (IdOrder != null && IdOrder.length() >= 4) {
                String prefix = IdOrder.substring(0, 1);
                int number = Integer.parseInt(IdOrder.substring(1));
                number++;
                newIdOrder = prefix + String.format("%03d", number);
            }
        } catch (Exception e) {
        }
        return newIdOrder;
    }
        
   public NewsDTO getNewsByID(String id) {
        String sql = "select * from News where News_ID = ?";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1,id);
            rs = ptm.executeQuery();
            while (rs.next()) {
                return new NewsDTO(rs.getString(1)
                        , rs.getString(2)
                        , rs.getString(3)
                        , rs.getString(4)
                        , rs.getString(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

  
public void updateNews(String newsid, String title, String content, String day, String photo) {
    String sql;
    if (photo != null && !photo.isEmpty()) {
        sql = "UPDATE News SET Title=?, Content=?, Day=?, Photo=? WHERE News_ID=?";
    } else {
        // If photo is not provided, don't update the photo field
        sql = "UPDATE News SET Title=?, Content=?, Day=? WHERE News_ID=?";
    }

    try {
        conn = DBUtils.getConnection();
        ptm = conn.prepareStatement(sql);
        ptm.setString(1, title);
        ptm.setString(2, content);
        ptm.setString(3, day);

        if (photo != null && !photo.isEmpty()) {
            ptm.setString(4, photo);
            ptm.setString(5, newsid);
        } else {
            ptm.setString(4, newsid);
        }
        ptm.executeUpdate();

    } catch (Exception e) {
        // Handle any exceptions here
    } finally {
        // Close the database connection and prepared statement in a finally block
        try {
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        } catch (SQLException e) {
            // Handle SQLException
        }
    }
}

   public NewsDTO deleteNews(String newsid) {
        String sql = "delete from News where News_ID =?";
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, newsid);
            rs = ptm.executeQuery();
            if (rs.next()) {
                return new NewsDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5));
            }
        } catch (Exception e) {
        }

        return null;
    }
   
   
    public List<NewsDTO> searchNews(String newsid) {
        String sql = "select * from News where News_ID like ?";
        List<NewsDTO> list = new ArrayList<>();
        try {
            conn = DBUtils.getConnection();
            ptm = conn.prepareStatement(sql);
            ptm.setString(1, "%" + newsid + "%");
            rs = ptm.executeQuery();
            if (rs.next()) {
                list.add(new NewsDTO(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5)));
            }
        } catch (Exception e) {
        }

        return list;
    }

      
     public static void main(String[] args) throws SQLException {
        NewsDAO a = new NewsDAO();
        List<NewsDTO> list = a.getListNews();
        for (NewsDTO o : list){
        System.out.println(o); 
        }
    }
}
