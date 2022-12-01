package vn.edu.hcmuaf.fit.model;
import java.util.Date;
public class Review {

    private String  id;

    private String  id_user;

    private String id_product;

    private int status;

    private String content;

    private Date   review_date;

    public Review(String id, String id_user, String id_product, int status, String content, Date review_date) {
        this.id = id;
        this.id_user = id_user;
        this.id_product = id_product;
        this.status = status;
        this.content = content;
        this.review_date = review_date;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getId_user() {
        return id_user;
    }

    public void setId_user(String id_user) {
        this.id_user = id_user;
    }

    public String getId_product() {
        return id_product;
    }

    public void setId_product(String id_product) {
        this.id_product = id_product;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Date getReview_date() {
        return review_date;
    }

    public void setReview_date(Date review_date) {
        this.review_date = review_date;
    }

    @Override
    public String toString() {
        return "Review{" +
                "id='" + id + '\'' +
                ", id_user='" + id_user + '\'' +
                ", id_product='" + id_product + '\'' +
                ", status=" + status +
                ", content='" + content + '\'' +
                ", review_date=" + review_date +
                '}';
    }
}
