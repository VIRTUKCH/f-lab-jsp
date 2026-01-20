package board.dto;

import java.sql.Date;

public class BoardDto {
    private int num;
    private String title;
    private String content;
    private String id;
    private Date postdate;
    private String visitcount;

    public BoardDto() {
    }

    public BoardDto(int num, String title, String content, String id, Date postdate, String visitcount) {
        this.num = num;
        this.title = title;
        this.content = content;
        this.id = id;
        this.postdate = postdate;
        this.visitcount = visitcount;
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
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

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Date getPostdate() {
        return postdate;
    }

    public void setPostdate(Date postdate) {
        this.postdate = postdate;
    }

    public String getVisitcount() {
        return visitcount;
    }

    public void setVisitcount(String visitcount) {
        this.visitcount = visitcount;
    }
}
