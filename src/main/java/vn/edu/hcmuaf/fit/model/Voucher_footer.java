package vn.edu.hcmuaf.fit.model;

public class Voucher_footer {
    String image;
    String name;
    String text;

    public Voucher_footer(String image, String name, String text) {
        this.image = image;
        this.name = name;
        this.text = text;
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

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    @Override
    public String toString() {
        return this.image +  this.name + this.text;
    }
}
