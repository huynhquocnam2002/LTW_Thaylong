package vn.edu.hcmuaf.fit.model;
public class Producer {

    private String id;

    private String name;

    private String img;

    private int status;


    public Producer(String id, String name, String img, int status) {
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

    @Override
    public String toString() {
        return "Producer{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", img='" + img + '\'' +
                ", status=" + status +
                '}';
    }
}
