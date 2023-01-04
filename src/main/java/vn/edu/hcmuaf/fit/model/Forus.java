package vn.edu.hcmuaf.fit.model;

public class Forus {
    String image;
    String name;
    String position;
    String describe;

    public Forus(String image, String name, String position, String describe) {
        this.image = image;
        this.name = name;
        this.position = position;
        this.describe = describe;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getDescribe() {
        return describe;
    }

    public void setDescribe(String describe) {
        this.describe = describe;
    }

    @Override
    public String toString() {
        return this.getImage() + this.getName() + this.position + this.getDescribe() ;
    }
}
