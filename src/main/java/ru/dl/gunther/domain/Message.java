package ru.dl.gunther.domain;

import javax.persistence.*;

@Entity
public class Message {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    @Column(name = "tag", length = 50, nullable = false)
    private String tag;

    @Column(name = "body", length = 50, nullable = false)
    private String body;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "user_id")
    private User author;

    @Column(name = "filename")
    private String filename;

    @Column(name = "date", length = 50, nullable = false)
    private String date;

    public Message() {
    }
    public Message(String tag, String body, User user, String date) {
        this.setTag(tag);
        this.setBody(body);
        this.setAuthor(user);
        this.setDate(date);
    }

    public String getAuthorName() {
        return author != null ? author.getUsername() : "<none>";
    }

    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }

    public String getBody() {
        return body;
    }
    public void setBody(String body) {
        this.body = body;
    }

    public String getTag() {
        return tag;
    }
    public void setTag(String tag) {
        this.tag = tag;
    }

    public User getAuthor() {
        return author;
    }
    public void setAuthor(User author) {
        this.author = author;
    }

    public String getFilename() {
        return filename;
    }
    public void setFilename(String filename) {
        this.filename = filename;
    }

    public String getDate() {
        return date;
    }
    public void setDate(String date) {
        this.date = date;
    }
}
