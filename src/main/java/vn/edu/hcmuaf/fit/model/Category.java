package vn.edu.hcmuaf.fit.model;

public class Category {

    private String id, name, img;
    private int status;

    public Category(String id, String name, String img, int status) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
