/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sample.news;

/**
 *
 * @author dinhg
 */
public class NewsDTO {
    private String news_id;
    private String title;
    private String content;
    private String day;
    private String photo;

    public NewsDTO() {
    }

    public NewsDTO(String news_id, String title, String content, String day, String photo) {
        this.news_id = news_id;
        this.title = title;
        this.content = content;
        this.day = day;
        this.photo = photo;
    }

    public String getNews_id() {
        return news_id;
    }

    public void setNews_id(String news_id) {
        this.news_id = news_id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getDay() {
        return day;
    }

    public void setDay(String day) {
        this.day = day;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    @Override
    public String toString() {
        return "NewsDTO{" + "news_id=" + news_id + ", title=" + title + ", content=" + content + ", day=" + day + ", photo=" + photo + '}';
    }
    
    
}
